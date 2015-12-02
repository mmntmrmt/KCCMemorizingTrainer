//
//  QuestionsModel.swift
//  KCCMemorizingTrainer
//
//  Created by Ryo Morimoto on 2015/11/17.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import RealmSwift

class QuestionsModel: Object {
    dynamic var id = 0
    dynamic var imageData = "image1.jpg"
    dynamic var answer = "Af"
    dynamic var success = 0
    dynamic var failure = 0
    
    override static func primaryKey() -> String? {
        return "id"
    }

}
// Specify properties to ignore (Realm won't persist these)
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }

