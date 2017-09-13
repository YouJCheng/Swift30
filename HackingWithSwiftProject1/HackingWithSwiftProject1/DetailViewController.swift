//
//  DetailViewController.swift
//  HackingWithSwiftProject1
//
//  Created by Yu-J.Cheng on 2017/9/13.
//  Copyright © 2017年 YuChienCheng. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var selectedImage: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View Picture"
        imageView.contentMode = .scaleAspectFit
        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }

        // Do any additional setup after loading the view.

    }



}
