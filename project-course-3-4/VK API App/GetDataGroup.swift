//
//  GetDataGroup.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 12.02.2021.
//

import UIKit

class GetDataGroup {
    
    var token = Session.userInfo.token
    var userId = Session.userInfo.userId
    var version = "5.52"
    var result: [GroupStruct1] = []
    
    func getData()  {
//        let result: [GroupStruct1] = []
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
//        return result
    }
}

