//
//  MyProfile.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 04.01.2021.
//

import UIKit

class MyProfile: UIViewController {
    
    @IBOutlet weak var containerView: ShadowAvatarView?
    @IBOutlet weak var nameProfile: UINavigationItem!
    @IBOutlet weak var charView: UILabel!
    @IBOutlet weak var friendNameProfile: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var ageView: UILabel!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var buttonLike: UIButton!
    
    var myContactArr = myContact
    var likeDefault: Int = 0
    var like: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
// установка имени, заголовк в виде имени, пола и возраста
        nameProfile.title = myContactArr.name
        friendNameProfile.text = myContactArr.name
        sexLabel.text = myContactArr.sex
        like = myContactArr.likes
        likeCount.text = String(myContactArr.likes)
        ageView.text = String(myContactArr.age)
        
        
        
// установка статуса профиля
        let statusData = ["онлайн", "был(а) недавно", "был(а) только что"]
        let random = Int.random(in: 0..<statusData.count)
        statusLabel.text = statusData[random]
        
        
 // если аватар отсутсвует то ставится буква
        charView.text = funcChar()
        if myContactArr.avatar == nil {
            charView.layer.zPosition = 1
//            containerView?.backgroundColor = myContact.color
            containerView?.setImageProfile(nil, myContactArr.color)
        } else {
            containerView?.setImageProfile(myContact.avatar, myContactArr.color)
        }
        
        
// функция установки лайка
        let buttonChange = UITapGestureRecognizer(target: self, action: #selector(checkLike))
        buttonLike.addGestureRecognizer(buttonChange)
    }
    
// функция выборки первой буквы из имени
    func funcChar() -> String{
        let char = myContactArr.name.map{String($0)}
        let str = String(char[0])
        return str
    }
    
    
// функция установки лайка
    @objc func checkLike(){
        
        if like == myContactArr.likes {
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

}
