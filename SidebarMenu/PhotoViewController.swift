//
//  PhotoViewController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController{
    // Counter to keep track of how many times the Practice button has been pressed 
    // if odd, it means "starting" practice
    // if even, it means "ending practice"
    var buttonCount = 0
    @IBOutlet weak var menuButton:UIBarButtonItem!
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func practiceButton(sender: UIBarButtonItem) {
        buttonCount++
        if buttonCount%2 == 0{ // even
            // change color of button 
            // transition to start practice screen
        } else{ // odd
            // take away highlight of button
            // transition to end practice screen (not sure how screen branching works)..
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
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
