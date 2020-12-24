//
//  friendProfile.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 16.12.2020.
//

import UIKit

class friendProfile: UIViewController {
    
    
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var containerView: ShadowAvatarView?
    @IBOutlet weak var friendNameProfile: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var ageView: UILabel!
    @IBOutlet weak var charView: UILabel!
    
    
    var imageFriend: UIImage? = nil
    var nameProfile: String = ""
    var sexProfile: String? = nil
    var statusProfile: String? = nil
    var likeDefault: Int = 0
    var like: Int = 0
    var ageLabel: Int = 0
    var colorBG: UIColor? = nil
//    var char: String? = nil
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView?.setImageProfile(imageFriend, colorBG)
        friendNameProfile.text = nameProfile
        sexLabel.text = sexProfile
        
        likeCount.text = String(likeDefault)
        ageView.text = String(ageLabel)
        
        
        let buttonChange = UITapGestureRecognizer(target: self, action: #selector(checkLike))
        buttonLike.addGestureRecognizer(buttonChange)
        
        let statusData = ["онлайн", "был(а) недавно", "был(а) только что"]
        
        let random = Int.random(in: 0..<statusData.count)
        
        statusLabel.text = statusData[random]
        
        
        charView.text = funcChar()
        
        if imageFriend == nil {
            charView.layer.zPosition = 1
        }
        
//        char = funcChar()
        
    }
    
    
    @objc func checkLike(){
        
        if like == likeDefault {
            like += 1
            likeCount.text = String(like)
            likeCount.textColor = UIColor.red
            likeCount.font = UIFont.systemFont(ofSize: CGFloat(20))
        } else if like > likeDefault {
            like -= 1
            likeCount.text = String(like)
            likeCount.textColor = UIColor.systemBlue
            likeCount.font = UIFont.systemFont(ofSize: CGFloat(15))
        }
        
    }
    
    func funcChar() -> String{
        let char = nameProfile.map{String($0)}
        let str = String(char[0])
        return str
    }
    
}
