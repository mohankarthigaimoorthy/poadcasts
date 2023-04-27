//
//  image.swift
//  pepulPodcasts
//
//  Created by Mohan K on 03/01/23.
//

import Foundation

import UIKit

struct image {
    var id: String = UUID().uuidString
    var image: UIImage
    
    var blurredImage: UIImage? {
        return Filters.blur(image, id: id)
    }
}
    let mockImages: [image] = [
        image(image: UIImage(named: "image1")!),
        image(image: UIImage(named: "image2")!),
        image(image: UIImage(named: "image3")!),
        image(image: UIImage(named: "image4")!),
        image(image: UIImage(named: "image5")!),
        image(image: UIImage(named: "image6")!),
        image(image: UIImage(named: "image7")!),
        image(image: UIImage(named: "image8")!),
        image(image: UIImage(named: "image9")!),
        image(image: UIImage(named: "image10")!),
        image(image: UIImage(named: "image11")!),
        image(image: UIImage(named: "image12")!),
        image(image: UIImage(named: "image13")!),
        
]

