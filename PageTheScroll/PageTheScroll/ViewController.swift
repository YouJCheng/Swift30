//
//  ViewController.swift
//  PageTheScroll
//
//  Created by Yu-J.Cheng on 2017/9/8.
//  Copyright © 2017年 YuChienCheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    lazy var scrollView = UIScrollView()
    fileprivate var images = [UIImageView]()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
        scrollView.delegate = self

        
    }

    override func viewDidAppear(_ animated: Bool) {

        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width

        for x in 0...2 {
            let image = UIImage(named: "\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)

            var newX: CGFloat = 0.0

            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)

            contentWidth += newX

            scrollView.addSubview(imageView)

            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.size.height / 2) - 75, width: 150, height: 150)

        }

        scrollView.minimumZoomScale = 0.5
        
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.size.height)
    }


    func setUpViews() {
        view.addSubview(scrollView)

        scrollView.isPagingEnabled = true
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.widthAnchor.constraint(equalToConstant: 220)
        ])

        
    }


}

