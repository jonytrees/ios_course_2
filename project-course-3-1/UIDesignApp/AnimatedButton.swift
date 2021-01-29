//
//  AnimatedButton.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 15.01.2021.
//

import UIKit

class AnimatedButton: UIButton {
    
    // анимация кнопки
    func addAnimate(){
        self.layer.cornerRadius = 10
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = UIColor.init(red: 48/255, green: 155/255, blue: 255/255, alpha: 1)
        self.addTarget(self, action: #selector(whatsButton(sender:)), for: .touchUpInside)
    }

    @objc func whatsButton(sender: UIButton){
        self.animateView(sender)
    }
    
    
    func animateView(_ viewToAnimate: UIView){
        UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
            viewToAnimate.transform = CGAffineTransform(scaleX: 0.92, y: 0.92)
        }) { (_) in
            UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
                viewToAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)
            }, completion: nil)
            
        }
    }
}
