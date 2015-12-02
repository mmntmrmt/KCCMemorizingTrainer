//
//  ResultViewController.swift
//  KCCMemorizingTrainer
//
//  Created by Ryo Morimoto on 2015/11/13.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var nLabel: UILabel!
    @IBOutlet weak var mLabel: UILabel!
    
    var n = ""
    var m = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nLabel.text = n
        mLabel.text = m

        // Do any additional setup after loading the view.
    }

    @IBAction func backUIButtonTouchUpInside(sender: UIButton) {
        self.presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
