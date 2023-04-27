//
//  ViewController.swift
//  pepulPodcasts
//
//  Created by Mohan K on 31/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var getStart: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

    
}

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct InfoVCPreview: PreviewProvider {
    
    static var previews: some View {
        // view controller using programmatic UI
        ViewController().toPreview()
    }
}
#endif
