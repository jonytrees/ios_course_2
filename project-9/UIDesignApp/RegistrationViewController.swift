//
//  RegistrationViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 19.12.2020.
//

import UIKit

class RegistrationViewController: UIViewController {

    @IBOutlet weak var enterBtn: AnimatedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // анимация кнопки
        enterBtn.addAnimate()
    }
    
}
