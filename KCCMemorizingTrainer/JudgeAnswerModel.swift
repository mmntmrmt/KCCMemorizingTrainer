//
//  JudgeAnswerModel.swift
//  KCCMemorizingTrainer
//
//  Created by Ryo Morimoto on 2015/11/21.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import Foundation
import UIKit
class JudgeAnswer: UIViewController {
    var thisAnswer = ""
    func setAnswer (answer :String){
        thisAnswer = answer
    }
    
    func judgeAnswer (answer :String) -> Bool {
        print(answer)
        if (answer == thisAnswer) {
            return true
        }else{
            return false
        }
        
    }
    
        
}
