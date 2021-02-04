//
//  signUpViewController.swift
//  Lesson10PersonalityQuiz
//
//  Created by Валерий Игнатьев on 04.02.2021.
//

import UIKit

class signUpViewController: UIViewController {
    
    @IBOutlet weak var emailTFsecond: UITextField!
    @IBOutlet weak var passTFsecond: UITextField!

    @IBOutlet weak var registrationButtonAction: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewWillDisappear(true)
        setMyDesign()
        // Do any additional setup after loading the view.
    }

    private func setMyDesign() {
        registrationButtonAction.layer.cornerRadius = 20
        registrationButtonAction.backgroundColor = .red
        registrationButtonAction.setTitleColor(.white, for: .normal)
    
        emailTFsecond.layer.cornerRadius = 15
        emailTFsecond.layer.borderWidth = 0.1
        emailTFsecond.clipsToBounds = true
        
        passTFsecond.layer.cornerRadius = 15
        passTFsecond.layer.borderWidth = 0.1
        passTFsecond.clipsToBounds = true

    }
    
    //Показать навигационную панель на контроллере вида мы ее не вызываем в viewDidLoad
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
