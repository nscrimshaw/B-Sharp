//
//  ChooseEmotionsViewController.swift
//  SidebarMenu
//
//  Created by Priya Ganesan on 11/19/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class ChooseEmotionsViewController: UIViewController {

    @IBAction func emotion1(sender: UIButton) {
            sender.backgroundColor = UIColor.redColor()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
