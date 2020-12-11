//
//  FriendCell.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class FriendCell: UICollectionViewCell {
    @IBOutlet weak var nameFriend: UILabel!
    @IBOutlet weak var avatar: UIImageView!
    
    func setData(name: String){
        nameFriend.text = name
    }
}
