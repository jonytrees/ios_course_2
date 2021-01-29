
//
//  tCsData.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 08.01.2021.
//

import UIKit

struct AllContactsData {
    var name: String
    var avatar: UIImage?
    var sex: String
    var age: Int
    var likes: Int
    var color: UIColor
    var posts: [PostData]
    var galleryPhotos: [AllPhotos]
}


var contactsData = [
    AllContactsData(name: "Василий Уткин", avatar: UIImage(named: "avatar_1")!, sex: "мужской", age: 25, likes: 5, color: .blue, posts: [
        PostData(title: "Мой первый пост", text: "бла бла бла", date: "25.07.2020", image: UIImage(named: "post_1")!),
        PostData(title: "Мой второй пост", text: "ку ку ку", date: "13.07.2019", image: UIImage(named: "post_2")!),
        PostData(title: "Мой третий пост", text: "текст текст текст", date: "25.07.2020", image: UIImage(named: "post_3")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 11),
        AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 22),
        AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 42),
        AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 45),
        AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 65),
        AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 76)
    ]),
    AllContactsData(name: "Дмитрий Смирнов", avatar: UIImage(named: "avatar_2")!, sex: "мужской", age: 24, likes: 7, color: .brown, posts: [
        PostData(title: "Заголовок 1", text: "текст 1 текст 2 текст 3", date: "01.01.2021", image: UIImage(named: "post_4")!),
        PostData(title: "Мой второй пост", text: "lorem текст", date: "13.07.2019", image: UIImage(named: "post_5")!),
        PostData(title: "Заголовок 2", text: "я пользователь ВК", date: "07.12.2016", image: UIImage(named: "post_6")!)
    ], galleryPhotos: [
        AllPhotos(name: UIImage(named: "avatar_3")!, likePhoto: 31),
        AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 32),
        AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 65),
        AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 34),
        AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 67),
        AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 13)
    ]),
    AllContactsData(name: "Дарья Иванова", avatar: UIImage(named: "avatar_3")!, sex: "женский", age: 31, likes: 17, color: .gray, posts: [
        PostData(title: "Заголовок 12", text: "123456789", date: "01.01.2017", image: UIImage(named: "post_7")!),
        PostData(title: "Мой  пост", text: "lorem текст", date: "13.09.2019", image: UIImage(named: "post_8")!)
 ], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_6")!, likePhoto: 42),
    AllPhotos(name: UIImage(named: "avatar_3")!, likePhoto: 45),
    AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 25),
    AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 57),
    AllPhotos(name: UIImage(named: "group_4")!, likePhoto: 14),
    AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 29)
]),
    AllContactsData(name: "Ксения Букина", avatar: nil, sex: "женский", age: 29, likes: 21, color: .green, posts: [
        PostData(title: "Заголовок 19", text: "текст 1 текст 2 текст 3", date: "22.05.2021", image: UIImage(named: "post_5")!),
        PostData(title: "Заголовок 20", text: "я пользователь ВК", date: "07.12.2010", image: UIImage(named: "post_1")!)
], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_7")!, likePhoto: 30),
    AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 28),
    AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 17),
    AllPhotos(name: UIImage(named: "group_1")!, likePhoto: 57),
    AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 94),
    AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 73)
]),
    AllContactsData(name: "Роман Лукин", avatar: UIImage(named: "avatar_5")!, sex: "мужской", age: 18, likes: 3, color: .orange, posts: [
        PostData(title: "Title Of Post 1", text: "текст 1 текст 2 текст 3", date: "01.11.2017", image: UIImage(named: "post_2")!),
        PostData(title: "Title Of Post 2", text: "lorem текст 111", date: "13.07.2019", image: UIImage(named: "avatar_6")!),
        PostData(title: "Заголовок 2", text: "я пользователь Telegram", date: "07.12.2016", image: UIImage(named: "post_3")!)
], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 92),
    AllPhotos(name: UIImage(named: "avatar_2")!, likePhoto: 93),
    AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 82),
    AllPhotos(name: UIImage(named: "group_4")!, likePhoto: 71),
    AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 37),
    AllPhotos(name: UIImage(named: "avatar_6")!, likePhoto: 74)
]),
    AllContactsData(name: "Нина Цой", avatar: UIImage(named: "avatar_6")!, sex: "женский", age: 27, likes: 13, color: .red, posts: [
        PostData(title: "Заголовок 100", text: "текст 100 текст 200 текст 300", date: "01.01.2020", image: UIImage(named: "post_4")!),
        PostData(title: "Заголовок 2", text: "я пользователь ВК", date: "07.12.2016", image: UIImage(named: "post_5")!)
], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_9")!, likePhoto: 83),
    AllPhotos(name: UIImage(named: "avatar_8")!, likePhoto: 84),
    AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 62),
    AllPhotos(name: UIImage(named: "group_6")!, likePhoto: 73),
    AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 84),
    AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 23)
]),
    AllContactsData(name: "Михаил Токов", avatar: nil, sex: "мужской", age: 32, likes: 9, color: .systemGray6, posts: [
        PostData(title: "Заголовок 1", text: "текст 1 текст 2 текст 3", date: "01.01.2021", image: UIImage(named: "post_6")!),
        PostData(title: "Мой второй пост", text: "lorem текст", date: "13.07.2019", image: UIImage(named: "post_7")!),
        PostData(title: "Заголовок 2", text: "я пользователь ВК", date: "07.12.2016", image: nil)
], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 72),
    AllPhotos(name: UIImage(named: "avatar_2")!, likePhoto: 38),
    AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 47),
    AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 62),
    AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 49),
    AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 62)
]),
    AllContactsData(name: "Павел Дуров", avatar: UIImage(named: "avatar_9")!, sex: "мужской", age: 35, likes: 24, color: .systemGreen, posts: [
        PostData(title: "Мой текст пост", text: "lorem текст", date: "10.10.2019", image: UIImage(named: "post_8")!),
        PostData(title: "Заголовок рандом", text: "текст рандом", date: "17.02.2018", image: UIImage(named: "post_5")!)
], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 94),
    AllPhotos(name: UIImage(named: "avatar_2")!, likePhoto: 95),
    AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 96),
    AllPhotos(name: UIImage(named: "group_5")!, likePhoto: 83),
    AllPhotos(name: UIImage(named: "group_8")!, likePhoto: 37),
    AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 48)
]),
    AllContactsData(name: "Мария Кук", avatar: UIImage(named: "avatar_8")!, sex: "женский", age: 29, likes: 19, color: .blue, posts: [
        PostData(title: "Заголовок 188", text: "дщкem lorem lorem", date: "01.01.2019", image: UIImage(named: "post_4")!),
        PostData(title: "Заголовок 2", text: "я пользователь ВК", date: "07.12.2016", image: UIImage(named: "post_5")!)
], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_5")!, likePhoto: 24),
    AllPhotos(name: UIImage(named: "avatar_3")!, likePhoto: 35),
    AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 46),
    AllPhotos(name: UIImage(named: "group_1")!, likePhoto: 57),
    AllPhotos(name: UIImage(named: "group_6")!, likePhoto: 27),
    AllPhotos(name: UIImage(named: "avatar_8")!, likePhoto: 83)
]),
    AllContactsData(name: "Иван Сонин", avatar: nil, sex: "мужской", age: 24, likes: 8, color: .purple, posts: [
        PostData(title: "Заголовок 2345", text: "я ghjграммист на Swift", date: "07.02.2016", image: UIImage(named: "post_6")!)
], galleryPhotos: [
    AllPhotos(name: UIImage(named: "avatar_6")!, likePhoto: 10),
    AllPhotos(name: UIImage(named: "avatar_4")!, likePhoto: 23),
    AllPhotos(name: UIImage(named: "group_3")!, likePhoto: 32),
    AllPhotos(name: UIImage(named: "group_2")!, likePhoto: 57),
    AllPhotos(name: UIImage(named: "group_7")!, likePhoto: 65),
    AllPhotos(name: UIImage(named: "avatar_1")!, likePhoto: 78)
])
]
