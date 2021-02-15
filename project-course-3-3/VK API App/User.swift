//
//  User.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 11.02.2021.
//

import UIKit

class User: UIViewController {
    var token = Session.userInfo.token
    var userId = Session.userInfo.userId
    var version = "5.52"
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var birthdayUser: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func getData() {
        
        if let url = URL(string: "https://api.vk.com/method/users.get?user_ids=\(userId)&fields=bdate&access_token=\(token)&v=5.52") {
            let session = URLSession.shared
            
            let task = session.dataTask(with: url) { (data, response, error) in
                do{
                    let json = try? (JSONSerialization.jsonObject(with: data!, options: .mutableContainers)) as? [String: Any]
                    print(json!)
                    let jsondata = try? JSONSerialization.data(withJSONObject: json!["response"]!)
                    print(jsondata!)
                    
                    let jsonDecoder = try JSONDecoder().decode([UserStruct].self, from: jsondata!)
                    
                    for user in jsonDecoder {
                        DispatchQueue.main.async {
                            self.userName.text = String(user.first_name) + " " + String(user.last_name)
                            self.birthdayUser.text = String(user.bdate)
                            self.userIdLabel.text = String(user.id)
                        }
                    }
                }
                
                catch{
                    print(error)
                }
            }
            task.resume()
        }
    }
}


struct UserStruct: Decodable {
    var id: Int
    var first_name: String
    var last_name: String
    var bdate: String
}


