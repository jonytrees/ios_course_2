//
//  FriendsViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    var contacts = [
        Contacts(name: "Василий Уткин", avatar: UIImage(named: "avatar_1")!, sex: "мужской", age: 25, likes: 5, color: .blue),
        Contacts(name: "Дмитрий Смирнов", avatar: UIImage(named: "avatar_2")!, sex: "мужской", age: 24, likes: 7, color: .brown),
        Contacts(name: "Дарья Иванова", avatar: UIImage(named: "avatar_3")!, sex: "женский", age: 31, likes: 17, color: .gray),
        Contacts(name: "Ксения Букина", avatar: nil, sex: "женский", age: 29, likes: 21, color: .green),
        Contacts(name: "Роман Лукин", avatar: UIImage(named: "avatar_5")!, sex: "мужской", age: 18, likes: 3, color: .orange),
        Contacts(name: "Нина Цой", avatar: UIImage(named: "avatar_6")!, sex: "женский", age: 27, likes: 13, color: .red),
        Contacts(name: "Михаил Токов", avatar: nil, sex: "мужской", age: 32, likes: 9, color: .systemGray6),
        Contacts(name: "Павел Дуров", avatar: UIImage(named: "avatar_9")!, sex: "мужской", age: 35, likes: 24, color: .systemGreen),
        Contacts(name: "Мария Кук", avatar: UIImage(named: "avatar_8")!, sex: "женский", age: 29, likes: 19, color: .blue),
        Contacts(name: "Иван Сонин", avatar: nil, sex: "мужской", age: 24, likes: 8, color: .purple)
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell") as! FriendCellTableViewCell


        let index = indexPath.row
        let name = contacts[index].name
        let image: UIImage? = contacts[index].avatar
        let color = contacts[index].color
        
        cell.setData(name: name, image: image, color: color)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            contacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(identifier: "controller") as! friendProfile
        
        viewController.nameProfile = contacts[indexPath.row].name
        viewController.imageFriend = contacts[indexPath.row].avatar
        viewController.sexProfile = contacts[indexPath.row].sex
        viewController.likeDefault = contacts[indexPath.row].likes
        viewController.ageLabel = contacts[indexPath.row].age
        viewController.like = viewController.likeDefault
        viewController.colorBG = contacts[indexPath.row].color
        
        
        show(viewController, sender: nil)
    }
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }

}

