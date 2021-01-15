//
//  GroupsTableViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class GroupsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var searchGroupBar: UISearchBar!
    
    @IBOutlet var groupView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupView.delegate = self
        groupView.dataSource = self
    }
    
    
    var dates = groupsData
    var searching = false
    
    // сюда попадают те кто был найден в результате поиска
    var searchGroup = [GroupsData]()

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searching ? searchGroup.count : dates.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let groups = groupView.dequeueReusableCell(withIdentifier: "groupCell") as! GroupsViewCell
        
        let index = indexPath.row
        
        if searching == false {
            let name = dates[index].name
            let image = dates[index].avatar
            let color = dates[index].color
            
            groups.setGroupDate(name: name, image: image, color: color)
            return groups
        } else {
            let name = searchGroup[index].name
            let image = searchGroup[index].avatar
            let color = searchGroup[index].color
            
            groups.setGroupDate(name: name, image: image, color: color)
            return groups
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let groupController = storyboard.instantiateViewController(identifier: "groupController") as! GroupProfile
        
        if searching == false {
            groupController.nameProfile = dates[indexPath.row].name
            groupController.categoriaProfile = dates[indexPath.row].categoria
            groupController.followersCount = dates[indexPath.row].followers
            groupController.nameProfile = dates[indexPath.row].name
            groupController.desc = dates[indexPath.row].description
            groupController.imageFriend = dates[indexPath.row].avatar
            groupController.likeDefault = dates[indexPath.row].likes
            groupController.like = groupController.likeDefault
            groupController.colorBG = dates[indexPath.row].color
            groupController.allPostsGroup = dates[indexPath.row].posts
            groupController.allPhotosArr = dates[indexPath.row].galleryPhotos
            show(groupController, sender: nil)
        } else {
            groupController.nameProfile = searchGroup[indexPath.row].name
            groupController.categoriaProfile = searchGroup[indexPath.row].categoria
            groupController.followersCount = searchGroup[indexPath.row].followers
            groupController.nameProfile = searchGroup[indexPath.row].name
            groupController.desc = searchGroup[indexPath.row].description
            groupController.imageFriend = searchGroup[indexPath.row].avatar
            groupController.likeDefault = searchGroup[indexPath.row].likes
            groupController.like = groupController.likeDefault
            groupController.colorBG = searchGroup[indexPath.row].color
            
            groupController.allPostsGroup =
                searchGroup[indexPath.row].posts
            groupController.allPhotosArr = searchGroup[indexPath.row].galleryPhotos
            show(groupController, sender: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groupsData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // exit из профиля
    @IBAction func myUnwindGroup(unwindSegue: UIStoryboardSegue){}
    
}


// расширение класса для поиска
extension GroupsTableViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchGroup = groupsData.filter({$0.name.prefix(searchText.count) == searchText})
        
        searching = true
        groupView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchGroupBar.text = ""
    }
}
