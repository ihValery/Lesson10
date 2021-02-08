//
//  AnketaVC.swift
//  Lesson10
//
//  Created by Валерий Игнатьев on 08.02.2021.
//

import UIKit

class AnketaVC: UIViewController {

    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var surnameTF: UITextField!
    @IBOutlet weak var genderSegmentControl: UISegmentedControl!
    @IBOutlet weak var sendDataButton: UIButton!
    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var stepperChilfren: UIStepper!
    @IBOutlet weak var numberChildren: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMyDesign()

        // Do any additional setup after loading the view.
    }
    @IBAction func genderSCChangeed(_ sender: UISegmentedControl) {
        switch genderSegmentControl.selectedSegmentIndex {
        case 0:
            UserDefaults.standard.set("man", forKey: "gender")
        case 1:
            UserDefaults.standard.set("no gender", forKey: "gender")
        case 2:
            UserDefaults.standard.set("wonam", forKey: "gender")
        default:
            break
        }
    }
    @IBAction func sendDataBttnAction(_ sender: UIButton) {
        
    }
    
    @IBAction func skipBttnAction(_ sender: UIButton) {
        
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        switch stepperChilfren.value {
        case 0:
            numberChildren.text = ""
        case 1...4:
            numberChildren.text = String(format: "%.0f", stepperChilfren.value)
        case 5:
            numberChildren.text = "large family"
        default:
            break
        }
    }
    
    
    private func setMyDesign() {
        skipButton.layer.cornerRadius = 20
        skipButton.backgroundColor = .red
        skipButton.setTitleColor(.white, for: .normal)
        
        sendDataButton.layer.cornerRadius = 20
        sendDataButton.backgroundColor = .red
        sendDataButton.setTitleColor(.white, for: .normal)
        
        skipButton.layer.cornerRadius = 20
        skipButton.backgroundColor = .red
        skipButton.setTitleColor(.white, for: .normal)
        
        genderSegmentControl.layer.cornerRadius = 15
        genderSegmentControl.setTitle("man", forSegmentAt: 0)
        genderSegmentControl.insertSegment(withTitle: "gender", at: 1, animated: false)
        genderSegmentControl.setTitle("woman", forSegmentAt: 2)
        genderSegmentControl.selectedSegmentIndex = 1
        
        stepperChilfren.value = 0
        stepperChilfren.minimumValue = 0
        stepperChilfren.maximumValue = 5
        stepperChilfren.layer.cornerRadius = 15
        
        nameTF.layer.cornerRadius = 15
        nameTF.layer.borderWidth = 0.1
        nameTF.clipsToBounds = true
        
        surnameTF.layer.cornerRadius = 15
        surnameTF.layer.borderWidth = 0.1
        surnameTF.clipsToBounds = true
    }
    
    //Скрыть панель навигации на контроллере этого вида
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

}
