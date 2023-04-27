//
//  firstCollectionViewCell.swift
//  pepulPodcasts
//
//  Created by Mohan K on 03/01/23.
//

import UIKit

class firstCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var songName: UILabel!
    
    static let identifier = "firstCollectionViewCell"
    
    static func nib() -> UINib {
        
        return UINib(nibName: "firstCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
   
}
