//
//  ViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 04.12.2020.
//

import UIKit

class ViewController: UIViewController {

    private let login = "login"
    private let pass = "123"
    
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passInput: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "Enter" {
            if EnterApp(){
                return true
            } else {
                let alert = UIAlertController(title: "Вы ввели неверный логин и пароль", message: "Введите верные данные", preferredStyle: .alert)
                let action = UIAlertAction(title: "Хорошо", style: .default) { (action) in
                    self.loginInput.text = ""
                    self.passInput.text = ""
                }
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
                return false
            }
        }
        
        return true
    }
    
     private func EnterApp() -> Bool {
        return loginInput.text == login && passInput.text == pass
    }
    
    @IBAction func unwindToLogin(_ unwindSegue: UIStoryboardSegue) {
    }
    
}

