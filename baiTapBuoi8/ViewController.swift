//
//  ViewController.swift
//  baiTapBuoi8
//
//  Created by Trương Duy Tân on 09/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var richLabel: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        richLabel.alpha = 0
        img.alpha = 0
        UIView.animate(withDuration: 10, delay: 0.5, options: [.repeat, .autoreverse], animations: {
            self.richLabel.alpha = 1
            self.img.alpha = 1})
//        }) { _ in
//            self.richLabel.alpha = 0.1
//            self.img.alpha = 0.1
//        }
    }


}

