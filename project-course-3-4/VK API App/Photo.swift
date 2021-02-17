//
//  Photo.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 12.02.2021.
//

import UIKit

class Photo: UIViewController {
    var token = Session.userInfo.token
    var userId = Session.userInfo.userId
    var version = "5.52"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func getData()  {
        
        if let url = URL(string: "https://api.vk.com/method/photos.getAll?extended=\(userId)&fields=bdate&access_token=\(token)&v=\(version)") {
            let session = URLSession.shared
            
            
            let task = session.dataTask(with: url) { (data, response, error) in
                do{
                    let json = try? (JSONSerialization.jsonObject(with: data!, options: .mutableContainers)) as? [String: AnyObject]
                    let main_first = json!["response"]
                    
                    let items =  main_first!["items"]
                    
                    let itemsData = try JSONSerialization.data(withJSONObject: items!!)
                    
                    let photo1280 = try JSONDecoder().decode([PhotoStruct].self, from: itemsData)
                    
                    
                    for photo in photo1280 {
                        
                        DispatchQueue.main.async {
                            let xWidth = Int.random(in: 0...Int(self.view.frame.width))
                            let yHeight = Int.random(in: 0...Int(self.view.frame.height))
                            let imageUrl = photo.photo_1280
                            let data = try? Data(contentsOf: imageUrl)
                            var imageView: UIImageView
                            imageView = UIImageView(frame:CGRect(x: xWidth, y: yHeight, width: 150, height: 150));
                            imageView.image = UIImage(data: data!)
                            self.view.addSubview(imageView)
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


struct PhotoStruct: Decodable {
    var photo_1280: URL
}
