//
//  GalerryPhotosCollection.swift
//  UIDesignApp
//
//  Created by Евгений Янушкевич on 07.01.2021.
//

import UIKit


class GalerryPhotosCollection: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
    
    var galleryGroup = [AllPhotos]() // фото из групп
    var galleryContact = [AllPhotos]() // фото из контактов друзей
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return galleryGroup.count == 0 ? galleryContact.count : galleryGroup.count
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let photoCell = collectionView.dequeueReusableCell(withReuseIdentifier: "galleryCell", for: indexPath) as! GalleryPhotosCell

        if galleryContact.count == 0 {
            let image = galleryGroup[indexPath.row].name
            let likes = galleryGroup[indexPath.row].likePhoto
            photoCell.setGallery(image: image, likes: likes)
        } else {
            let image = galleryContact[indexPath.row].name
            let likes = galleryContact[indexPath.row].likePhoto
            photoCell.setGallery(image: image, likes: likes)
        }
        
        
        // градиент для фона
        let gradient: CAGradientLayer = CAGradientLayer()

        gradient.colors = [UIColor.black.cgColor, UIColor.white.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 1.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)

        photoCell.layer.insertSublayer(gradient, at: 0)
        
        return photoCell
    }
}


// слайдер
extension GalerryPhotosCollection: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = UIScreen.main.bounds
        return CGSize(width: size.width, height: size.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
}
