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
    }
    
    @IBAction func passTFChanged(_ sender: UITextField) {
    }
}

