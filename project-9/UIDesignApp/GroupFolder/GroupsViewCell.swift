//
//  GroupsViewCell.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class GroupsViewCell: UITableViewCell {
    
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var charView: UILabel!
    @IBOutlet weak var avatar: ShadowView!

    
    func setGroupDate(name: String, image: UIImage?, color: UIColor) {
        NameLabel.text = name
        
        let char = name.map{String($0)}
        let str = String(char[0])
        
        if image == nil{
            charView.layer.zPosition = 1
        } else {
            charView.layer.zPosition = -1
        }
        
        charView.text = str
        avatar.setImage(image, color)
    }
}
