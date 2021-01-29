//
//  GroupsData.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 04.01.2021.
//

import UIKit

struct GroupsData {
    var name: String
    var avatar: UIImage?
    var color: UIColor
    var followers: Int
    var categoria: String
    var description: String
    var likes: Int
    var posts: [PostData]
    var galleryPhotos: [AllPhotos]
}

var groupsData = [
    GroupsData(name: "Swift. Обучение", avatar: UIImage(named: "group_1")!, color: .red, followers: 12573, categoria: "Юмор", description: "Группа про юмор и веселье", likes: 203, posts: [
            PostData(title: "Первый пост в группе", text: "бла бла бла", date: "21.07.2020", image: UIImage(named: "post_1")!),
            PostData(title: "Второй пост в группе", text: "ку ку ку", date: "13.02.2019", image: UIImage(named: "post_2")!),
            PostData(title: "Третий пост в группе", text: "текст текст текст", date: "25.11.2011", image: UIImage(named: "post_3")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 10),
        AllPhotos(name: UIImage(named: "avatar_2")!, likePhoto: 23),
        AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 32),
        AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 57),
        AllPhotos(name: UIImage(named: "group_8")!, likePhoto: 65),
        AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 78)
    ]),
    GroupsData(name: "MDK", avatar: UIImage(named: "group_2")!, color: .blue, followers: 21957, categoria: "Бизнес", description: "Группа про бизнес и делопроизводство", likes: 395, posts: [
            PostData(title: "Пост 1", text: "бла бла бла", date: "10.07.2020", image: UIImage(named: "post_4")!),
            PostData(title: "Пост 2", text: "ку ку ку", date: "13.11.2019", image: UIImage(named: "post_5")!),
            PostData(title: "Пост 3", text: "текст текст текст", date: "01.01.2010", image: UIImage(named: "post_6")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 12),
        AllPhotos(name: UIImage(named: "avatar_6")!, likePhoto: 32),
        AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 45),
        AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 24),
        AllPhotos(name: UIImage(named: "group_1")!, likePhoto: 64),
        AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 13)
    ]),
    GroupsData(name: "БОРЩ", avatar: nil, color: .green, followers: 47650, categoria: "Спорт", description: "Группа про спорт и ЗОЖ", likes: 196, posts: [
            PostData(title: "Пост 20", text: "текст текс текст", date: "25.07.2017", image: UIImage(named: "post_7")!),
            PostData(title: "Пост 21", text: "text text text", date: "03.07.2009", image: UIImage(named: "post_8")!),
            PostData(title: "Title this group", text: "lorem text lorem text lorem text", date: "15.04.2018", image: UIImage(named: "post_5")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_7")!, likePhoto: 255),
        AllPhotos(name: UIImage(named: "avatar_3")!, likePhoto: 544),
        AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 66),
        AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 23),
        AllPhotos(name: UIImage(named: "group_1")!, likePhoto: 35),
        AllPhotos(name: UIImage(named: "avatar_6")!, likePhoto: 76)
    ]),
    GroupsData(name: "ДЛБ", avatar: UIImage(named: "group_4")!, color: .yellow, followers: 7490, categoria: "Автомобили", description: "Группа про машины", likes: 673, posts: [
            PostData(title: "Пост пост пост", text: "бла бла бла", date: "02.02.2002", image: UIImage(named: "post_1")!),
            PostData(title: "Мой второй пост", text: "ку ку ку", date: "13.07.2019", image: UIImage(named: "avatar_3")!),
            PostData(title: "Мой третий пост", text: "текст текст текст", date: "25.07.2020", image: UIImage(named: "post_2")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 678),
        AllPhotos(name: UIImage(named: "avatar_3")!, likePhoto: 356),
        AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 123),
        AllPhotos(name: UIImage(named: "group_1")!, likePhoto: 345),
        AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 234),
        AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 456)
    ]),
    GroupsData(name: "BRAIN", avatar: UIImage(named: "group_5")!, color: .brown, followers: 67421, categoria: "Техника", description: "Группа про технику и его ремонт", likes: 592, posts: [
            PostData(title: "Мой пост", text: "бла бла", date: "25.04.2020", image: UIImage(named: "post_3")!),
            PostData(title: "Мой пост", text: "ку ку", date: "13.07.2021", image: UIImage(named: "post_4")!),
            PostData(title: "Мой пост", text: "текст текст", date: "25.07.2017", image: UIImage(named: "post_5")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_3")!, likePhoto: 1340),
        AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 23),
        AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 89),
        AllPhotos(name: UIImage(named: "group_1")!, likePhoto: 67),
        AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 45),
        AllPhotos(name: UIImage(named: "avatar_7")!, likePhoto: 43)
    ]),
    GroupsData(name: "Веcелый студент", avatar: UIImage(named: "group_6")!, color: .black, followers: 12573, categoria: "Строительство", description: "Группа про ремонт и строительство", likes: 94, posts: [
            PostData(title: "Мой первый пост", text: "бла бла бла", date: "25.07.2020", image: UIImage(named: "post_6")!),
            PostData(title: "Мой второй пост", text: "ку ку ку", date: "13.07.2019", image: UIImage(named: "avatar_3")!),
            PostData(title: "Мой третий пост", text: "текст текст текст", date: "25.07.2020", image: UIImage(named: "post_7")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 255),
        AllPhotos(name: UIImage(named: "avatar_3")!, likePhoto: 544),
        AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 66),
        AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 23),
        AllPhotos(name: UIImage(named: "group_1")!, likePhoto: 35),
        AllPhotos(name: UIImage(named: "avatar_6")!, likePhoto: 76)
    ]),
    GroupsData(name: "Smart - умный журнал", avatar: nil, color: .gray, followers: 35987, categoria: "Обучение", description: "Группа про образование", likes: 1002, posts: [
            PostData(title: "Мой первый", text: "бла бла бла", date: "15.07.2020", image: UIImage(named: "post_8")!),
            PostData(title: "Мой второй", text: "ку ку ку", date: "11.07.2019", image: UIImage(named: "post_5")!),
            PostData(title: "Мой третий", text: "текст текст текст", date: "24.07.2020", image: UIImage(named: "post_1")!)
    ], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 10),
    AllPhotos(name: UIImage(named: "avatar_2")!, likePhoto: 23),
    AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 32),
    AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 57),
    AllPhotos(name: UIImage(named: "group_8")!, likePhoto: 65),
    AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 78)
]),
    GroupsData(name: "Bloom", avatar: UIImage(named: "group_8")!, color: .orange, followers: 9754, categoria: "Юмор", description: "Группа просто поржать", likes: 391, posts: [
            PostData(title: "первый пост", text: "блаr блаr блаr", date: "25.07.2020", image: UIImage(named: "post_2")!),
            PostData(title: "второй пост", text: "куc куc куc", date: "13.07.2019", image: UIImage(named: "post_3")!),
            PostData(title: "третий пост", text: "текстc текстc текстc", date: "19.12.2017", image: UIImage(named: "post_4")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 10),
        AllPhotos(name: UIImage(named: "avatar_2")!, likePhoto: 23),
        AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 32),
        AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 57),
        AllPhotos(name: UIImage(named: "group_8")!, likePhoto: 65),
        AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 78)
    ])
]
