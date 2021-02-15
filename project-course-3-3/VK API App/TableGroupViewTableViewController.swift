//
//  TableGroupViewTableViewController.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 12.02.2021.
//

import UIKit

class TableGroupViewTableViewController: UITableViewController {
    

   
    var token = Session.userInfo.token
    var userId = Session.userInfo.userId
    var version = "5.52"
    var result: [GroupStruct1] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
        
        
        if let url = URL(string: "https://api.vk.com/method/groups.get?extended=1&fields=bdate&access_token=\(token)&v=\(version)") {
            let session = URLSession.shared
            
            
            let task = session.dataTask(with: url) { (data, response, error) in
                let json = try? (JSONSerialization.jsonObject(with: data!, options: .mutableContainers)) as? [String: AnyObject]
                let main_first = json!["response"]

                let items =  main_first!["items"]
                do{

                    let itemsData = try JSONSerialization.data(withJSONObject: items!!)

                    let names = try JSONDecoder().decode([GroupStruct1].self, from: itemsData)
                    self.result = names
                }
                catch{
                    print(error)
                }
            }
            task.resume()
        }
        
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell") as! TableGroupCellTableViewCell
        
//        print("Количество: \(result.count)")
//
//
//        let name = result[indexPath.row]
        
//        print(name)
        
//        cell.setName(name: name)
        
        return cell
    }

}



