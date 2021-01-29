//
//  File.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 04.01.2021.
//

import UIKit

struct MyContact {
    var name: String
    var avatar: UIImage?
    var sex: String
    var age: Int
    var likes: Int
    var color: UIColor
    var posts: [PostData]
    var galleryPhotos: [AllPhotos]
}


var myContact = AllContactsData(name: "Евгений Янушкевич", avatar: UIImage(named: "avatar_4")!, sex: "мужской", age: 28, likes: 30, color: .red, posts: [
    PostData(title: "Мой первый пост", text: "бла бла бла", date: "25.07.2020", image: UIImage(named: "avatar_5")!),
    PostData(title: "Мой второй пост", text: "ку ку ку", date: "13.07.2019", image: UIImage(named: "avatar_3")!),
    PostData(title: "Мой третий пост", text: "текст текст текст", date: "25.07.2020", image: UIImage(named: "group_5")!)
], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 63),
    AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 47),
    AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 28),
    AllPhotos(name: UIImage(named: "group_6")!, likePhoto: 56),
    AllPhotos(name: UIImage(named: "group_1")!, likePhoto: 87),
    AllPhotos(name: UIImage(named: "avatar_3")!, likePhoto: 72)
])

