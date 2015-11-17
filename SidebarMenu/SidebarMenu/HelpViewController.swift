//
//  HelpViewController.swift
//  SidebarMenu
//
//  Created by Marilyn Harris on 11/17/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class HelpViewController: UIViewController {
    @IBOutlet weak var BarButtonItem:UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        if self.revealViewController() != nil {
            BarButtonItem.target = self.revealViewController()
            BarButtonItem.action = "revealToggle:"
            self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
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
