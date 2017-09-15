//
//  Person.swift
//  HackingWithSwiftProject10
//
//  Created by Yu-J.Cheng on 2017/9/15.
//  Copyright © 2017年 YuChienCheng. All rights reserved.
//

import Foundation

class Person: NSObject, NSCoding {

    var name: String
    var image: String

    init(name: String, image: String) {
        self.name = name
        self.image = image
    }
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(image, forKey: "image")
    }
    required init?(coder aDecoder: NSCoder) {
        name = aDecoder.decodeObject(forKey: "name") as! String
        image = aDecoder.decodeObject(forKey: "image") as! String

    }

}
