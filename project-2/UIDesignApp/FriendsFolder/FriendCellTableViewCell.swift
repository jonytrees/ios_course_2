//
//  FriendCellTableViewCell.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class FriendCellTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageAvatar: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    
    func setData(name: String, image: UIImage){
        NameLabel.text = name
        ImageAvatar.image = image
    }
    
}
