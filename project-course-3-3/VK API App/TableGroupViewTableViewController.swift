//
//  TableGroupViewTableViewController.swift
//  VK API App
//
//  Created by Евгений Янушкевич on 12.02.2021.
//

import UIKit

class TableGroupViewTableViewController: UITableViewController {
    

    var result: [GroupStruct1] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.delegate = self
//        tableView.dataSource = self
        
        
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

