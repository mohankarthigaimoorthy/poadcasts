//
//  secondCollectionViewCell.swift
//  pepulPodcasts
//
//  Created by Mohan K on 03/01/23.
//

import UIKit

class secondCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var shadowView: UIView!
    
    @IBOutlet weak var imageContainer: UIView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageContainer.layer.cornerRadius = 15
        imageContainer.clipsToBounds = true
        shadowView.layer.cornerRadius = 16
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowOffset = .zero
        shadowView.layer.shadowRadius = 13
        shadowView.layer.shadowOpacity = 0.5
        
    }

}
