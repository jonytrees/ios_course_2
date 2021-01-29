//
//  ShadowAvatarView.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 17.12.2020.
//

import UIKit

class ShadowAvatarView: UIView {

    var imageView: UIImageView? = nil
    
    func setImageProfile(_ image: UIImage?, _ color: UIColor?){
        imageView = UIImageView(frame: self.bounds)
        
        if image == nil {
            imageView?.backgroundColor = color
            imageView?.layer.cornerRadius = self.frame.size.height / 2
            imageView?.layer.masksToBounds = true
            self.backgroundColor = .clear
            self.addSubview(imageView!)
            
        } else {
            
            imageView?.image = image
            imageView?.layer.cornerRadius = self.frame.size.height / 2
            imageView?.layer.masksToBounds = true
            self.backgroundColor = .clear
            self.addSubview(imageView!)
        }
    }
    
   
    override func draw(_ rect: CGRect) {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
    }
   
}
