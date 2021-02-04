//
//  signUpViewController.swift
//  Lesson10PersonalityQuiz
//
//  Created by Валерий Игнатьев on 04.02.2021.
//

import UIKit

class signUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        viewWillDisappear(true)
        
        // Do any additional setup after loading the view.
    }

    override func viewWillDisappear(_ animated: Bool) {                 //Показать навигационную панель на контроллере вида
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }

}
