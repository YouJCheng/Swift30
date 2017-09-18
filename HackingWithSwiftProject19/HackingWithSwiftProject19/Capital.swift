//
//  Capital.swift
//  HackingWithSwiftProject19
//
//  Created by Yu-J.Cheng on 2017/9/18.
//  Copyright © 2017年 YuChienCheng. All rights reserved.
//

import UIKit
import MapKit

class Capital: NSObject,MKAnnotation {

    var title: String?
    var coordinate: CLLocationCoordinate2D
    var info: String

    init(title: String, coordinate: CLLocationCoordinate2D, info: String) {
        self.title = title
        self.coordinate = coordinate
        self.info = info
    }

}
