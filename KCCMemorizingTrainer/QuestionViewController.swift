//
//  QuestionViewController.swift
//  KCCMemorizingTrainer
//
//  Created by Ryo Morimoto on 2015/11/17.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import UIKit
import RealmSwift
class QuestionViewController: UIViewController {

    @IBOutlet weak var QuestionUIImageView: UIImageView!
    var count = 0
    var yourAnswer = ""
    var rw = RightOrWrong()
    var questions = [QuestionsModel()]
    var judge = JudgeAnswer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LoadDataModel().load()
        let realm = try! Realm()
        for q1 in realm.objects(QuestionsModel) {
            questions.append(q1)
            print("\(q1.answer)")
            print("\(q1.id)")
            print("\(q1.imageData)")
        }
        for q in questions {
            print(q.id)
            print(q.imageData)
        }
        questions.shuffle(100)
        //questions.shuffle(questions.count-1)
        for q in questions {
            print(q.id)
            print(q.imageData)
        }
        QuestionUIImageView.image = UIImage(named: questions[count].imageData)
        judge.setAnswer(questions[count].answer)
    }
    
    @IBAction func afButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "Af"
        showAnswer()
    }
    
    @IBAction func awButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "Aw"
        showAnswer()
    }
    
    @IBAction func bwButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "BW"
        showAnswer()
    }
    
    @IBAction func bsButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "BS"
        showAnswer()
    }
    
    @IBAction func csButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "Cs"
        showAnswer()
    }
    
    @IBAction func cwButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "Cw"
        showAnswer()
    }
    
    @IBAction func cfaButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "Cfa"
        showAnswer()
    }
    
    @IBAction func cfbButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "Cfb"
        showAnswer()
    }
    
        @IBAction func dwButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "Dw"
        showAnswer()
    }
    
    @IBAction func dfButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "Df"
        showAnswer()
    }
    
    @IBAction func etButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "ET"
        showAnswer()
    }
    
    
    @IBAction func efButtonTouchUpInside(sender: UIButton) {
        yourAnswer = "EF"
        showAnswer()
    }
    
    func setQuestionData(){
        if self.count == self.questions.count - 1 {
            self.transition()
        }else{
            self.QuestionUIImageView.image = UIImage(named: self.questions[self.count].imageData)
            self.judge.setAnswer(self.questions[self.count].answer)
        }
    }
    
    func showAnswer() {//回答した後答えを表示する
        let myAlert: UIAlertController
        let myOkAction: UIAlertAction
        
        let myEndAction = UIAlertAction(title: "終了する", style: .Default) { action in
            print("End!!")
            print(self.rw.rightOrWrong)
            self.count++
            self.transition()
        }
        let mes = "正解は" + "\(self.questions[self.count].answer)" + "でした。"
        rw.rightOrWrong.append(judge.judgeAnswer(yourAnswer))
        
        if(rw.rightOrWrong[count]){
            myAlert = UIAlertController(title: "正解！", message: mes, preferredStyle: .Alert)
            myOkAction = UIAlertAction(title: "次の問題に進む", style: .Default) { action in
                print(self.count)
                self.rw.rightOrWrong[self.count] = true
                self.count++
                self.setQuestionData()
                print(self.rw.rightOrWrong)
            }
        }else{
            myAlert = UIAlertController(title: "残念!", message: mes, preferredStyle: .Alert)
            myOkAction = UIAlertAction(title: "次の問題に進む", style: .Default) { action in
                print(self.count)
                self.rw.rightOrWrong[self.count] = false
                self.count++
                self.setQuestionData()
                print(self.rw.rightOrWrong)
            }

        }
        myAlert.addAction(myOkAction)
        myAlert.addAction(myEndAction)
        myAlert.view.frame = (frame:CGRectMake(0, 0, 1000, 1000))
        presentViewController(myAlert, animated: true, completion: nil)
    }
    
    
    
    func transition() { //問題を解くのをやめて結果を表示する
        let resultViewController = self.storyboard!.instantiateViewControllerWithIdentifier("ResultView") as! ResultViewController
    //値を移す
        resultViewController.n = String(self.count)
        resultViewController.m = String(self.rw.countRight())
        self.presentViewController(resultViewController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
                // Dispose of any resources that can be recreated.
    }
}
