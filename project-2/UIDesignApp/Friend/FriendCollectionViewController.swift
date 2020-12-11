//
//  FriendCollectionViewController.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 11.12.2020.
//

import UIKit


class FriendCollectionViewController: UICollectionViewController {
    
    
    @IBOutlet var friendView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        friendView.delegate = self
        friendView.dataSource = self
    }
    
    let dates = ["friend 1", "friend 2", "friend 3"]

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = friendView.dequeueReusableCell(withReuseIdentifier: "friendAvatar", for: indexPath) as! FriendCell
        
        let index = indexPath.row
        
        let name = dates[index]
        
        cell.setData(name: name)
    
        return cell
    }

}
