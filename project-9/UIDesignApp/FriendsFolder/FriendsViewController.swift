//
//  FriendsViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var contacts = contactsData
    var searching = false
    var keys: [String] = []
    var sections: [String: [AllContactsData]] = [:]
    
    // сюда попадают те кто был найден по поиску
    var searchFriend = [AllContactsData]() // сюда попадают те кто был найден по поиску
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        contacts.forEach { contact in
            let firstLetter = String(contact.name.first!)
            if sections[firstLetter] != nil {
                sections[firstLetter]!.append(contact)
            } else {
                sections[firstLetter] = [contact]
            }
            keys = Array(sections.keys).sorted(by: <)
        }
    }
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return  searchFriend.count == 0 ? sections.count : 1
    }
    
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return searchFriend.count == 0 ? keys : [""]
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return  searchFriend.count != 0 ? "" : keys[section]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if searchFriend.count == 0 {
            let key = keys[section]
            let count = sections[key]!.count
            return count
        }
       
        return searchFriend.count
 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell") as! FriendCellTableViewCell
 
        if searchFriend.count == 0 {
            let key = keys[indexPath.section]
            let contact = sections[key]![indexPath.row]
            let name = contact.name
            let image: UIImage? = contact.avatar
            let color = contact.color
            cell.setData(name: name, image: image, color: color)
            return cell
        } else {
            let name = searchFriend[indexPath.row].name
            let image: UIImage? = searchFriend[indexPath.row].avatar
            let color = searchFriend[indexPath.row].color
            cell.setData(name: name, image: image, color: color)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let viewController = storyboard.instantiateViewController(identifier: "FriendController") as! friendProfile
        
        if searchFriend.count == 0 {
            let key = keys[indexPath.section]
            let contact = sections[key]![indexPath.row]
            viewController.nameProfile = contact.name
            viewController.imageFriend = contact.avatar
            viewController.sexProfile = contact.sex
            viewController.likeDefault = contact.likes
            viewController.ageLabel = contact.age
            viewController.like = viewController.likeDefault
            viewController.colorBG = contact.color
            viewController.allPost = contact.posts
            viewController.galleryContacts = contact.galleryPhotos
            
            show(viewController, sender: nil)
        } else {

            viewController.nameProfile = searchFriend[indexPath.row].name
            viewController.imageFriend = searchFriend[indexPath.row].avatar
            viewController.sexProfile = searchFriend[indexPath.row].sex
            viewController.likeDefault = searchFriend[indexPath.row].likes
            viewController.ageLabel = searchFriend[indexPath.row].age
            viewController.like = viewController.likeDefault
            viewController.colorBG = searchFriend[indexPath.row].color
            viewController.allPost = searchFriend[indexPath.row].posts
            viewController.galleryContacts = searchFriend[indexPath.row].galleryPhotos
            
            show(viewController, sender: nil)
        }
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            contacts.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){}
}


// расширение класса для поиска
extension FriendsViewController: UISearchBarDelegate {

     func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText == "" {
            searchFriend.removeAll()
        } else {
            searchFriend = contacts.filter({$0.name.prefix(searchText.count) == searchText})
        }

        tableView.reloadData()
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
    }
}

