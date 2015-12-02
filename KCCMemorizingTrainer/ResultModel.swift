//
//  ResultModel.swift
//  KCCMemorizingTrainer
//
//  Created by Ryo Morimoto on 2015/11/24.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import Foundation

class RightOrWrong: NSObject {
    var rightOrWrong : [Bool] = []
    
    func countRight() -> Int {
        var count = 0
        for i in rightOrWrong {
            if i == true {
                count++
            }
        }
        return count
    }
}