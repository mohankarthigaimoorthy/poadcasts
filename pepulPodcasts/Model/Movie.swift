//
//  Movie.swift
//  pepulPodcasts
//
//  Created by Mohan K on 02/01/23.
//

import Foundation
import UIKit

struct Movie {
    var name: String?
    var image: UIImage?
    var runtime: String?
    


init(name:String, image: UIImage,runtime:String) {
    self.name = name
    self.image = image
    self.runtime = runtime
}
    
    static func fetchMovieData() -> [Movie] {
        let songOne = Movie(name: "",image: UIImage(named: "image1")!, runtime: "")
        let songTwo = Movie(name: "",image: UIImage(named: "image2")!, runtime: "")
        let songThree = Movie(name: "",image: UIImage(named: "image3")!, runtime: "")
        let songFour = Movie(name: "",image: UIImage(named: "image4")!, runtime: "")
        let songFive = Movie(name: "",image: UIImage(named: "image5")!, runtime: "")
        let songSix = Movie(name: "",image: UIImage(named: "image6")!, runtime: "")
        let songSeven = Movie(name: "",image: UIImage(named: "image1")!, runtime: "")
        let songEight = Movie(name: "",image: UIImage(named: "image2")!, runtime: "")
        let songNine = Movie(name: "",image: UIImage(named: "image3")!, runtime: "")
        let songTen = Movie(name: "",image: UIImage(named: "image4")!, runtime: "")
        let songEleven = Movie(name: "",image: UIImage(named: "image5")!, runtime: "")
        return [songOne, songTwo, songThree, songFour, songFive, songSix, songSeven, songEight, songNine, songTen, songEleven]
    }
    
    
}
