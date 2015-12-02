
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
    let realm = Realm()
        var q :[QuestionsModel] = []
    func setQuestion(id:Int, answer:String) {
        var qs = QuestionsModel()
    
        q.append(qs)
        q[id-1].id = id
        q[id-1].imageData = "image" + String(id) + ".jpg"
        q[id-1].answer = answer
        realm.write{
            realm.add(q[id-1], update: true)
        }
    }
    
    func load() {
        realm.write {
            realm.deleteAll()
        }
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
    }
    
    func randomlySelect() {
    }
    
}