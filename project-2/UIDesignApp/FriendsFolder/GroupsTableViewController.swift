//
//  GroupsTableViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class GroupsTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet var groupView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        groupView.delegate = self
        groupView.dataSource = self
    }
    
    var groupsData: [(String, UIImage)] = [("Group 1", UIImage(named: "avatar_1")!), ("Group 2", UIImage(named: "avatar_2")!), ("Group 3", UIImage(named: "avatar_3")!)]

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        

        let groups = groupView.dequeueReusableCell(withIdentifier: "groupCell") as! GroupsViewCell
        
        let index = indexPath.row
        let name = groupsData[index].0
        let image = groupsData[index].1
        
        groups.setGroupDate(name: name, image: image)
        return groups
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            groupsData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    

}
