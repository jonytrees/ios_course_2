//
//  GroupProfile.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 04.01.2021.
//

import UIKit

class GroupProfile: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var postGroupView: UITableView!
    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var categoriaLabel: UILabel!
    @IBOutlet weak var containerView: ShadowAvatarView?
    @IBOutlet weak var groupNameProfile: UILabel!
    @IBOutlet weak var followersLabel: UILabel!
    @IBOutlet weak var descView: UILabel!
    @IBOutlet weak var charView: UILabel!
    @IBOutlet weak var titleProfile: UINavigationItem!
    @IBOutlet weak var galleryButton: AnimatedButton!
    
    
    var imageFriend: UIImage? = nil
    var nameProfile: String = ""
    var categoriaProfile: String = ""
    var likeDefault: Int = 0
    var like: Int = 0
    var followersCount: Int = 0
    var colorBG: UIColor? = nil
    var desc: String = ""
    var postGroupTitle = ""
    var postGroupText = ""
    var postGroupData = ""
    var postGroupImage: UIImage? = nil
    var allPostsGroup = [PostData]()
    var allPhotosArr = [AllPhotos]()
    
    // По нажатию на кнопку открывается контроллер со фотками
    @IBAction func btn(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let galleryController = storyboard.instantiateViewController(identifier: "GalleryController") as! GalerryPhotosCollection
        
        galleryController.galleryGroup = allPhotosArr
        show(galleryController, sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView?.setImageProfile(imageFriend, colorBG)
        groupNameProfile.text = nameProfile
        titleProfile.title = nameProfile
        categoriaLabel.text = categoriaProfile
        followersLabel.text = String(followersCount)
        likeCount.text = String(likeDefault)
        descView.numberOfLines = 0
        descView.text = desc
        postGroupView.delegate = self
        postGroupView.dataSource = self
        postGroupView.allowsSelection = true
        galleryButton.addAnimate() // анимация кнопки
        
        // кнопка для увеличение/уменьшения лайков
        let buttonChange = UITapGestureRecognizer(target: self, action: #selector(checkLike))
        buttonLike.addGestureRecognizer(buttonChange)
        buttonChange.cancelsTouchesInView = false
        
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
        return allPostsGroup.count
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  1
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let groupCell = postGroupView.dequeueReusableCell(withIdentifier: "PostGroupCell") as! PostGroupViewCell
        
        let topBorder = CALayer()
        let bottomBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: groupCell.frame.size.width, height: 10)

        topBorder.backgroundColor = UIColor.gray.withAlphaComponent(0.3).cgColor
        bottomBorder.frame = CGRect(x: 0, y: groupCell.frame.size.height - 10, width: groupCell.frame.size.width, height: 10)
        bottomBorder.backgroundColor = UIColor.gray.withAlphaComponent(0.3).cgColor
        groupCell.layer.addSublayer(topBorder)
        groupCell.layer.addSublayer(bottomBorder)
        
        
        let index = indexPath.row
        let title = allPostsGroup[index].title
        let text = allPostsGroup[index].text
        let date = allPostsGroup[index].date
        let image = allPostsGroup[index].image
        let name = nameProfile
        let ava = imageFriend
        
        groupCell.setPostData(name: name, ava: ava, color: colorBG, postTitle: title, postText: text, postDate: date, postImage: image)
        
        return groupCell
    }
   
    // exit из всех фоток
    @IBAction func unwindToProfile(_ unwindSegue: UIStoryboardSegue) {}
}
