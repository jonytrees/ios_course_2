//
//  GroupsViewCell.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class GroupsViewCell: UITableViewCell {
    
    @IBOutlet weak var nameGroup: UILabel!
    @IBOutlet weak var imageGroup: UIImageView!
    
    func setGroupDate(name: String, image: UIImage){
        imageGroup.image = image
        nameGroup.text = name
    }
}
