//
//  GalleryPhotosCell.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 07.01.2021.
//

import UIKit

class GalleryPhotosCell: UICollectionViewCell {
    
    @IBOutlet weak var imgPhoto: UIImageView!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var buttonLike: UIButton!
    
    var likeDefault: Int = 0
    var like: Int = 0
   
    
    // функция для установки лайков
    @objc func checkFunc(){
        if like == likeDefault {
            like += 1
            likeCount.text = String(like)
            likeCount.textColor = UIColor.red
            likeCount.font = UIFont.systemFont(ofSize: CGFloat(30))
        } else if like > likeDefault {
            like -= 1
            likeCount.text = String(like)
            likeCount.textColor = UIColor.white
            likeCount.font = UIFont.systemFont(ofSize: CGFloat(25))
        }
    }
    
    
    func setGallery(image: UIImage, likes: Int){
        imgPhoto.image = image
        likeCount.text = String(likes)
        likeDefault = likes
        like = likes
        
        
        // кнопка для изменения количества лайков
        let button = UITapGestureRecognizer(target: self, action: #selector(checkFunc))
        buttonLike.addGestureRecognizer(button)
    }
}
