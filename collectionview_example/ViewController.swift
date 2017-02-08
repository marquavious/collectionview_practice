//
//  ViewController.swift
//  collectionview_example
//
//  Created by Marquavious on 2/2/17.
//  Copyright © 2017 Marquavious Draggon. All rights reserved.
//

import UIKit
import CHTCollectionViewWaterfallLayout

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, CHTCollectionViewDelegateWaterfallLayout {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var titleArray = ["Chance","Drake","Roy","Kanye","6lack","Noc","PND"]
    var imageArray = [#imageLiteral(resourceName: "chance"),#imageLiteral(resourceName: "drake"),#imageLiteral(resourceName: "roy"),#imageLiteral(resourceName: "kanye"),#imageLiteral(resourceName: "6lack"),#imageLiteral(resourceName: "noc"),#imageLiteral(resourceName: "pnd")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
     
        setupCollectionView()
        
        let nib = UINib(nibName: "CollectionViewCellTwo", bundle: nil)
        
        collectionView.register(nib, forCellWithReuseIdentifier: "CollectionViewCellTwo")

        
    }
    
    func setupCollectionView(){
        
        // Create a waterfall layout
        let layout = CHTCollectionViewWaterfallLayout()
        
        // Change individual layout attributes for the spacing between cells
        layout.minimumColumnSpacing = 20
        layout.minimumInteritemSpacing = 20
        
        // Collection view attributes
        self.collectionView.autoresizingMask = [UIViewAutoresizing.flexibleHeight, UIViewAutoresizing.flexibleWidth]
        self.collectionView.alwaysBounceVertical = true
        
        // Add the waterfall layout to your collection view
        self.collectionView.collectionViewLayout = layout
    
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCellTwo", for: indexPath) as! CollectionViewCellTwo

       cell.imageView.image = imageArray[indexPath.row]
//       cell.titleLabel.text = titleArray[indexPath.row]
       cell.imageView.contentMode = .scaleAspectFit
        
        
//        if indexPath[0]%2 == 0{
//            cell.heightAnchor.constraint(equalToConstant: 200).isActive = true
//  
//        } else{
//            cell.heightAnchor.constraint(equalToConstant: 50).isActive = true
//
//        }
 
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        // create a cell size from the image size, and return the size
        let imageSize = imageArray[indexPath.row].size
        
        return CGSize(width: 50, height: 50)
        return imageSize
    }
    
    
    

}



