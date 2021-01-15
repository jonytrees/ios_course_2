//
//  LoginViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 19.12.2020.
//

import UIKit

class LoginViewController: UIViewController {
    
    private let login = "login"
    private let pass = "123"
    

    @IBOutlet weak var centerVerticalFormConstraint: NSLayoutConstraint!
    @IBOutlet weak var formContainerView: UIView!
    @IBOutlet weak var loginInput: UITextField!
    @IBOutlet weak var passInput: UITextField!
    @IBOutlet weak var enterBtn: AnimatedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // анимация кнопки
        enterBtn.addAnimate()
        
        
        // появление и исчезание клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillApper(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisapper(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(TapAction))
        self.view.addGestureRecognizer(tap)
    }
    
    // функция появления клавиатуры
    @objc func keyboardWillApper(_ notification: Notification){
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardRectangle = keyboardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height
            raiseFormView(to: keyboardHeight)
        }
    }
    
    // функция исчезновения клавиатуры
    @objc func keyboardWillDisapper(_ notification: NSNotification?) {
        UIView.animate(withDuration: 0.3) {
            self.centerVerticalFormConstraint.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    // функция на сколько и куда смещать поля ввода при появлении клавиатуры
    func raiseFormView(to height: CGFloat){
        let formMaxY = formContainerView.frame.maxY
        let currentViewHeight = self.view.frame.height - height
        let moveDistance = (formMaxY - currentViewHeight) + 30
        
        UIView.animate(withDuration: 0.3) {
            self.centerVerticalFormConstraint.constant = -moveDistance
            self.view.layoutIfNeeded()
        }
    }
    
    // функция для исчезновения клавиатуры при нажатии на любую область экрана
    @objc func TapAction() {
        view.endEditing(true)
    }
    
    
    // проверка логи на и пароля перед переходом на другой экран
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if identifier == "enterButton" {
            if funcEnterApp(){
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
    
     private func funcEnterApp() -> Bool {
        return loginInput.text == login && passInput.text == pass
    }
    
    // exit из контроллера регистрации
    @IBAction func unwindToLogin(_ unwindSegue: UIStoryboardSegue) {
    }

}


