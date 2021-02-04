//
//  ViewController.swift
//  Lesson10PersonalityQuiz
//
//  Created by Валерий Игнатьев on 03.02.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var tokenSwitch: UISwitch!
    
    @IBOutlet weak var signInButton: UIButton!
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


    @IBAction func emailTFChanged(_ sender: UITextField) {
        signInButton.isEnabled = isEmptyTF()
    }
    
    @IBAction func passTFChanged(_ sender: UITextField) {
        signInButton.isEnabled = isEmptyTF()
    }
    
    func updateStateBtn() {
        
    }
    
    func isEmptyTF() -> Bool {
        if let emailTFText = emailTF.text, let passTFText = passTF.text {
            return !emailTFText.isEmpty && !passTFText.isEmpty
        } else {
            return false
        }
        
        
    }
    
    
    private func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    

    
    override func viewWillAppear(_ animated: Bool) {                                //Скрыть панель навигации на контроллере этого вида
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
}
