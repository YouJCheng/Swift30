//
//  Whistle.swift
//  HackingWithSwiftProject33
//
//  Created by Yu-J.Cheng on 2017/9/21.
//  Copyright © 2017年 YuChienCheng. All rights reserved.
//

import CloudKit
import UIKit

class Whistle: NSObject {
    var recordID: CKRecordID!
    var genre: String!
    var comments: String!
    var audio: URL!
}
