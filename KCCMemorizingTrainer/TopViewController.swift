//
//  TopViewController.swift
//  KCCMemorizingTrainer
//
//  Created by Ryo Morimoto on 2015/12/01.
//  Copyright (c) 2015年 Ryo Morimoto. All rights reserved.
//

import UIKit

class TopViewController: UIViewController {

    @IBOutlet weak var backImageUIImageView: UIImageView!
       
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backImageUIImageView.image = UIImage(named:"sample1.jpg")
        // Do any additional setup after loading the view.
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
