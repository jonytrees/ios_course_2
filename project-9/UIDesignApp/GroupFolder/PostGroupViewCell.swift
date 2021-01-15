//
//  PostGroupViewCell.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 07.01.2021.
//

import UIKit

class PostGroupViewCell: UITableViewCell {

    @IBOutlet weak var namePostProfile: UILabel!
    @IBOutlet weak var charAvaPost: UILabel!
    @IBOutlet weak var avaPostProfile: ShadowView?
    @IBOutlet weak var textPost: UILabel!
    @IBOutlet weak var titlePost: UILabel!
    @IBOutlet weak var dataPost: UILabel!
    @IBOutlet weak var imagePost: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setPostData(name: String, ava: UIImage?, color: UIColor?, postTitle: String, postText: String, postDate: String, postImage: UIImage?){
        
        namePostProfile.text = name
        dataPost.text = postDate
        textPost.text = postText
        titlePost.text = postTitle
        imagePost.image = postImage
        
        // выбирает первую буква из имени
        let char = name.map({String($0)})
        let str = String(char[0])
        
        if ava == nil {
            charAvaPost.layer.zPosition = 1
        } else {
            charAvaPost.layer.zPosition = -1
        }
        
        charAvaPost.text = str
        avaPostProfile?.setImage(ava, color)
    }
    
    
    func setNews(name: String, avatar: UIImage?, color: UIColor, posts: [PostData], index: Int){
        
        namePostProfile.text = name
        for i in 0..<posts.count {
            dataPost.text = posts[i].date
            textPost.text = posts[i].text
            titlePost.text = posts[i].title
            imagePost.image = posts[i].image
        }
        
        let char = name.map({String($0)})
        let str = String(char[0])
        
        if avatar == nil {
            charAvaPost.layer.zPosition = 1
        } else {
            charAvaPost.layer.zPosition = -1
        }
        
        
        // установка буквы, аватрки и цвета
        charAvaPost.text = str
        avaPostProfile?.setImage(avatar, color)
    }

}
