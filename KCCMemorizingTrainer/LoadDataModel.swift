
//
//  LoadData.swift
//  KCCMemorizingTrainer
//
//  Created by Ryo Morimoto on 2015/11/17.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//
import Foundation
import RealmSwift

class LoadDataModel: NSObject {
    let realm = try! Realm()
        var q :[QuestionsModel] = []
    func setQuestion(id:Int, answer:String) {
        let qs = QuestionsModel()
    
        q.append(qs)
        q[id-1].id = id
        q[id-1].imageData = "image" + String(id) + ".jpg"
        q[id-1].answer = answer
        try! realm.write{
            self.realm.add(self.q[id-1], update: true)
        }
    }
    
    func load() {
        try! realm.write {
            self.realm.deleteAll()
        }
        //仮想大陸の問題
        setQuestion(1, answer:"Af")
        setQuestion(2, answer:"Aw")
        setQuestion(3, answer:"BS")
        setQuestion(4, answer:"BW")
        setQuestion(5, answer:"Cfa")
        setQuestion(6, answer:"Cfb")
        setQuestion(7, answer:"Cs")
        setQuestion(8, answer:"Cw")
        setQuestion(9, answer:"Df")
        setQuestion(10, answer:"Dw")
        setQuestion(11, answer:"EF")
        setQuestion(12, answer:"ET")
        //ハイサーグラフと雨温図の問題
        setQuestion(13, answer:"Af")
        setQuestion(14, answer:"Aw")
        setQuestion(15, answer:"BS")
        setQuestion(16, answer:"BW")
        setQuestion(17, answer:"Cfa")
        setQuestion(18, answer:"Cfb")
        setQuestion(19, answer:"Cs")
        setQuestion(20, answer:"Cw")
        setQuestion(21, answer:"Df")
        setQuestion(22, answer:"Dw")
        setQuestion(23, answer:"EF")
        setQuestion(24, answer:"ET")

    }
    
    func randomlySelect() {
    }
    
}