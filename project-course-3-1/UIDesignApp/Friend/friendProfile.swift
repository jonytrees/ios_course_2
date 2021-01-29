//
//  friendProfile.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 16.12.2020.
//

import UIKit

class friendProfile: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var postView: UITableView!
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var containerView: ShadowAvatarView?
    @IBOutlet weak var friendNameProfile: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var ageView: UILabel!
    @IBOutlet weak var charView: UILabel!
    @IBOutlet weak var titleProfile: UINavigationItem!
    @IBOutlet weak var photosBtn: AnimatedButton!
    
    var imageFriend: UIImage? = nil
    var nameProfile: String = ""
    var sexProfile: String? = nil
    var statusProfile: String? = nil
    var likeDefault: Int = 0
    var like: Int = 0
    var ageLabel: Int = 0
    var colorBG: UIColor? = nil
    var postTitle: String = ""
    var postText: String = ""
    var postDate: String = ""
    var postImage: UIImage? = nil
    var allPost: [PostData] = []
    var galleryContacts = [AllPhotos]()
    
    // По нажатию на кнопку открывается контроллер со фотками
    @IBAction func btnGallery(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let galleryController = storyboard.instantiateViewController(identifier: "GalleryController") as! GalerryPhotosCollection
        
        galleryController.galleryContact = galleryContacts
        show(galleryController, sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        postView.delegate = self
        postView.dataSource = self
        containerView?.setImageProfile(imageFriend, colorBG)
        friendNameProfile.text = nameProfile
        titleProfile.title = nameProfile
        sexLabel.text = sexProfile
        likeCount.text = String(likeDefault)
        ageView.text = String(ageLabel)
        
        photosBtn.addAnimate() // анимация кнопки
        
        // кнопка для увеличение/уменьшения лайков
        let buttonChange = UITapGestureRecognizer(target: self, action: #selector(checkLike))
        buttonLike.addGestureRecognizer(buttonChange)
        
        // рандомно устанавливается статус профиля
        let statusData = ["онлайн", "был(а) недавно", "был(а) только что"]
        let random = Int.random(in: 0..<statusData.count)
        statusLabel.text = statusData[random]
        
        // устанавливается первая буква имени, если отсутствует фото профиля
        charView.text = funcChar()
        
        if imageFriend == nil {
            charView.layer.zPosition = 1
        }
    }
    
    // функция подсчета лайков
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
    
    // функция которая берет первую букву имени
    func funcChar() -> String{
        let char = nameProfile.map{String($0)}
        let str = String(char[0])
        return str
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allPost.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let postcell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostViewCell
        let topBorder = CALayer()
        let bottomBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: postcell.frame.size.width, height: 10)
        topBorder.backgroundColor = UIColor.gray.withAlphaComponent(0.3).cgColor
        bottomBorder.frame = CGRect(x: 0, y: postcell.frame.size.height - 10, width: self.postView.frame.size.width, height: 10)
        bottomBorder.backgroundColor = UIColor.gray.withAlphaComponent(0.3).cgColor
        postcell.layer.addSublayer(topBorder)
        postcell.layer.addSublayer(bottomBorder)
        
        let index = indexPath.row
        let title = allPost[index].title
        let text = allPost[index].text
        let date = allPost[index].date
        let image = allPost[index].image
        
        postcell.setPostData(postTitle: title, postText: text, postDate: date, postImage: image)
        
        return postcell
    }
    
    // exit из всех фоток
    @IBAction func unwindToProfile(_ unwindSegue: UIStoryboardSegue) {}
}
