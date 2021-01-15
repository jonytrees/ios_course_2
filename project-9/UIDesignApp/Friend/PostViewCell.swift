//
//  PostViewCell.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 05.01.2021.
//

import UIKit

class PostViewCell: UITableViewCell {
    
    @IBOutlet weak var PostDateLabel: UILabel!
    @IBOutlet weak var TextPostLabel: UILabel!
    @IBOutlet weak var TitlePostLabel: UILabel!
    @IBOutlet weak var imagePostView: UIImageView!
    
    
    func setPostData(postTitle: String, postText: String, postDate: String, postImage: UIImage?){
        PostDateLabel.text = postDate
        TextPostLabel.text = postText
        TitlePostLabel.text = postTitle
        imagePostView.image = postImage
    }

}
