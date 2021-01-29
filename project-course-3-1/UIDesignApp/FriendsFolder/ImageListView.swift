//
//  ImageListView.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 20.12.2020.
//

import UIKit

class ImageListView: UIView {
    
    var avaView: UIImageView? = nil

    func setImage(_ image: UIImage?, _ color: UIColor?){
        avaView = UIImageView(frame: self.bounds)
        
        if image == nil {
            avaView?.backgroundColor = color
            avaView?.layer.cornerRadius = self.frame.size.height / 2
            avaView?.layer.masksToBounds = true
            self.backgroundColor = .clear
            self.addSubview(avaView!)
        } else {
            avaView?.image = image
            avaView?.layer.cornerRadius = self.frame.size.height / 2
            avaView?.layer.masksToBounds = true
            self.backgroundColor = .clear
            self.addSubview(avaView!)
        }
    }

    override func draw(_ rect: CGRect) {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
    }
}
