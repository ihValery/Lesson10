//
//  verificationVC.swift
//  Lesson10
//
//  Created by Валерий Игнатьев on 08.02.2021.
//

import UIKit

class verificationVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var vTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMyDesign()
        // Do any additional setup after loading the view.
    }
    
    //performSegue(withIdentifier: "fromRegistrationToMainApp", sender: nil)
    
    @IBAction func vTextFieldAction(_ sender: UITextField) {
        if let textField = vTextField.text {
            if textField == vTextField.placeholder {
                performSegue(withIdentifier: "fromRegistrationToMainApp", sender: nil)
            }
        }
    }
    private func setMyDesign() {
        vTextField.layer.cornerRadius = 15
        vTextField.layer.borderWidth = 1.5
        vTextField.layer.borderColor = .init(red: 255, green: 0, blue: 0, alpha: 1)
        vTextField.clipsToBounds = true
        
        vTextField.smartInsertDeleteType = UITextSmartInsertDeleteType.no
        vTextField.delegate = self
        
        vTextField.placeholder = randomPlaceholder()
    }
    
    private func randomPlaceholder() -> String {
        let tempPlaceholder = UInt.random(in: 1000...9999)
        return String(tempPlaceholder)
    }
    
    //Ограничение по количеству вводимых символов в TextField
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            guard let textFieldText = vTextField.text,
                let rangeOfTextToReplace = Range(range, in: textFieldText) else {
                    return false
            }
            let substringToReplace = textFieldText[rangeOfTextToReplace]
            let count = textFieldText.count - substringToReplace.count + string.count
            return count <= 4
    }
    
    //Скрыть панель навигации на контроллере этого вида
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}
