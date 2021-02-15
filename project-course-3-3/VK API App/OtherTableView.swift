//
//  OtherTableView.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 15.02.2021.
//

import UIKit
struct GroupStruct1: Decodable {
    var name: String
}
class OtherTableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var token = Session.userInfo.token
    var userId = Session.userInfo.userId
    var version = "5.52"
    var result: [GroupStruct1] = []
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        if let url = URL(string: "https://api.vk.com/method/groups.get?extended=1&fields=bdate&access_token=\(token)&v=\(version)") {
            let session = URLSession.shared
            
            
            let task = session.dataTask(with: url) { (data, response, error) in
                let json = try? (JSONSerialization.jsonObject(with: data!, options: .mutableContainers)) as? [String: AnyObject]
                let main_first = json!["response"]
                
                let items =  main_first!["items"]
                do{
                    
                    let itemsData = try JSONSerialization.data(withJSONObject: items!!)
                    
                    self.result = try JSONDecoder().decode([GroupStruct1].self, from: itemsData)
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                    
                }
                catch{
                    print(error)
                }
            }
            task.resume()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.result.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableGroupCellTableViewCell
        let name = result[indexPath.row].name
        cell.setName(name: name)
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
