//
//  podcastTableViewCell.swift
//  pepulPodcasts
//
//  Created by Mohan K on 02/01/23.
//

import UIKit

class podcastTableViewCell: UITableViewCell {
    
//    , UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
    fileprivate var currentPage: Int = 0 {
        didSet {
        }
    }
   
//    @IBOutlet weak var podacasts: UICollectionView!
//
//    static let identifier = "podcastTableViewCell"
//
//     var cardSize: CGSize {
//         let layout = podacasts.collectionViewLayout as! ScrollCardCollectionViewLayout
//        var cardSize = layout.itemSize
//        cardSize.width =  cardSize.width + layout.minimumLineSpacing
//        return cardSize
//    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
//        podacasts.delegate = self
//        podacasts.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 10
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = podacasts.dequeueReusableCell(withReuseIdentifier: "podcastCollectionViewCell", for: indexPath) as! podcastCollectionViewCell
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//                return CGSize(width: 300, height: 500)
//    }

}

//extension podcastTableViewCell:UIScrollViewDelegate {
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        let carSide =  self.cardSize.width
//        let offset =  scrollView.contentOffset.x
//        currentPage = Int(floor((offset - carSide / 2) / carSide) + 1)
//    }
//}
