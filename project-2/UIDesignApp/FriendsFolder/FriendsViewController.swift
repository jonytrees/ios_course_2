//
//  FriendsViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit

class FriendsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var friendsData: [(String, UIImage)] = [("Vasy", UIImage(named: "avatar_1")!), ("Dima", UIImage(named: "avatar_2")!), ("Kolya", UIImage(named: "avatar_3")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell") as! FriendCellTableViewCell
        
        
        let index = indexPath.row
        let name = friendsData[index].0
        let image = friendsData[index].1
        cell.setData(name: name, image: image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            friendsData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
