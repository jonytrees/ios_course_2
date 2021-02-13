//
//  TableGroupCellTableViewCell.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 12.02.2021.
//

import UIKit

class TableGroupCellTableViewCell: UITableViewCell {

   
    @IBOutlet weak var nameGroupLabel: UILabel!
    var name: String = ""
    
    func setName(name: String) {
        nameGroupLabel.text = name
    }
    
}
