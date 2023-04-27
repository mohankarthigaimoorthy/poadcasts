//
//  podCastsViewController.swift
//  pepulPodcasts
//
//  Created by Mohan K on 02/01/23.
//

import UIKit

class podCastsViewController: UIViewController {
    var movieData:[Movie] = []
    
    fileprivate var currentPage: Int = 0 {
        didSet {
            self.changeMovieDetailsUnderneath()
        }
    }
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let imageParallax: CGFloat = 30
    private var currentIndex: Int = 0
    private let image: [image] = mockImages
    
    fileprivate var cardSize: CGSize {
        let layout = collectionView.collectionViewLayout as! ScrollCardCollectionViewLayout
        var cardSize = layout.itemSize
        cardSize.width =  cardSize.width + layout.minimumLineSpacing
        return cardSize
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewstate()
        Filters.prepareCache()
      
    }
    
    func viewstate() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "firstCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "firstCollectionViewCell")
        collectionView.register(UINib(nibName: "secondCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "secondCollectionViewCell")
    }

    func changeMovieDetailsUnderneath() {
        UILabel.animate(withDuration: 0.8) { [self] in
            let visibleCell = self.collectionView.visibleCells.compactMap({$0 as? firstCollectionViewCell})
            visibleCell.forEach { cell in
                let index = self.collectionView.indexPath(for: cell)?.row ?? 0
                print("visibleCell index: \(index) \n currentPage: \(self.currentPage)")
                cell.songName.textColor = index == currentPage ? UIColor.blue : UIColor.green
           
        }
        
        }
        
    }
}

extension podCastsViewController:  UICollectionViewDelegate, UICollectionViewDataSource {
    
    
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 10
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCollectionViewCell", for: indexPath) as! firstCollectionViewCell
            return cell
        }else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCollectionViewCell", for: indexPath) as!
            secondCollectionViewCell
            return cell
        }
        return UICollectionViewCell()
    }
    
}

extension podCastsViewController:UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let itemWidth = collectionView.bounds.width
        let offsetX = scrollView.contentOffset.x
        let currentItem = floor(offsetX / itemWidth)
        
        let itemOffsetX = currentItem * itemWidth
        let distanceFromSpotLight = (offsetX - itemOffsetX) / itemWidth
        
        updateImages(Int(currentItem), percentage: distanceFromSpotLight)
        let carSide =  self.cardSize.width
        let offset =  scrollView.contentOffset.x
        currentPage = Int(floor((offset - carSide / 2) / carSide) + 1)
    }
    ////
    //    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    //        let carSide =  self.cardSize.width
    //        let offset =  scrollView.contentOffset.x
    //        currentPage = Int(floor((offset - carSide / 2) / carSide) + 1)
    //        print("currentPage: \(currentPage)")
    //    }
    
    private func updateImages(_ index: Int, percentage: CGFloat) {
        if !image.contains(index: index) { return }
        
        currentIndex = index
    }
}
extension podCastsViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,lyout collectionViewLayout: UICollectionViewLayout,sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        collectionView.bounds.size
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        .zero
        
    }
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat
    {
        .zero
    }
}


//extension podCastsViewController {
//    private func animationScreen(percentage: CGFloat) {
//        animateImages(percentage: percentage)
//    }
//
//    private func animateImages(percentage: CGFloat) {
//        previousImageView.transform = CGAffineTransform.identity.translatedBy(x: -1 * imageParallax * percentage, y: 0)
//        nextImageView.alpha = percentage
//        nextImageView.transform = CGAffineTransform.identity.translatedBy(x: imageParallax -(imageParallax * percentage), y: 0)
//    }
//}
