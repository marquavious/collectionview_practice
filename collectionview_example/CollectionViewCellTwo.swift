//
//  CollectionViewCellTwo.swift
//  collectionview_example
//
//  Created by Marquavious on 2/2/17.
//  Copyright © 2017 Marquavious Draggon. All rights reserved.
//

import UIKit

class CollectionViewCellTwo: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        self.layer.cornerRadius =  self.frame.size.height / 2
    }
    
    override func layoutSubviews() {
        self.layer.cornerRadius =  10

    }

}
