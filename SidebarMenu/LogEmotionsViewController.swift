//
//  LogEmotionsViewController.swift
//  SidebarMenu
//
//  Created by Priya Ganesan on 11/19/15.
//  Copyright © 2015 AppCoda. All rights reserved.
//

import UIKit

class LogEmotionsViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var goalField: UITextField!
    @IBOutlet weak var nextButton: UIButton!
    
    
    
    // Variable to keep track of goal
    var goalTextInput = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        // Handle text field input
        goalField.delegate = self
        
        // Hide next button until goal entered
        nextButton.hidden = true
    }

    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        //hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    
    func textFieldDidEndEditing(textField: UITextField){
        print (textField.text)
        nextButton.hidden = false
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
