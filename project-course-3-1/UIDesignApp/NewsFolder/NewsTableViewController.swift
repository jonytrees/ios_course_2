//
//  NewsTableViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 08.01.2021.
//

import UIKit

class NewsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var postView: UITableView!
    
    var newsAllInfoGroup = groupsData
    var newsAllInfoUser = contactsData
    var countPostGroup = [PostData]()
    var countPostUser = [PostData]()
    var countAllPost = [PostData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        postView.delegate = self
        postView.dataSource = self
        
        
        //цикл для перебора всех профилей и поиска в каждом профиле постов
        for i in 0..<newsAllInfoGroup.count {
            let postArr = newsAllInfoGroup[i].posts
            
            for s in 0..<postArr.count {
                let post = postArr[s]
                countPostGroup.append(post)
            }
        }
        
        for i in 0..<newsAllInfoUser.count {
            let postArr = newsAllInfoUser[i].posts
            
            for s in 0..<postArr.count {
                let post = postArr[s]
                countPostUser.append(post)
            }
        }
        
        countAllPost.append(contentsOf: countPostUser)
        countAllPost.append(contentsOf: countPostGroup)
    }
    
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsAllInfoGroup.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = postView.dequeueReusableCell(withIdentifier: "PostGroupCell") as! PostGroupViewCell
        
        
        let topBorder = CALayer()
        let bottomBorder = CALayer()
        topBorder.frame = CGRect(x: 0, y: 0, width: cell.frame.size.width, height: 10)

        topBorder.backgroundColor = UIColor.gray.withAlphaComponent(0.3).cgColor
        bottomBorder.frame = CGRect(x: 0, y: cell.frame.size.height - 10, width: cell.frame.size.width, height: 10)
        bottomBorder.backgroundColor = UIColor.gray.withAlphaComponent(0.3).cgColor
        cell.layer.addSublayer(topBorder)
        cell.layer.addSublayer(bottomBorder)
        
        let index = indexPath.row
        
        var newsGroup = [NewsData]()
        var nameGroup = newsAllInfoGroup[index].name, avatarGroup = newsAllInfoGroup[index].avatar, colorGroup = newsAllInfoGroup[index].color, postsGroup = newsAllInfoGroup[index].posts
        
        var nameUser = contactsData[index].name, avatarUser = contactsData[index].avatar, colorUser = contactsData[index].color, postsUser = contactsData[index].posts
        
        
        cell.setNews(name: nameGroup, avatar: avatarGroup, color: colorGroup, posts: postsGroup, index: index)
        
        cell.setNews(name: nameUser, avatar: avatarUser, color: colorUser, posts: postsUser, index: index)
        
        return cell
    }

}
