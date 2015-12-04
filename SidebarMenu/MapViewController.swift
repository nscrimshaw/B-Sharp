//
//  MapViewController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class MapViewController: UIViewController {
    var goals: [String] = ["Hit high notes on 20th measure", "Take criticism really well", "Learn a new song", "Learn new set of chords", "Polish song for performance"]
    
    var emotions: [String] = ["Sad", "Angry", "Mad", "Happy", "Calm", "Nervous", "Excited", "Determined", "Focused"]
    
    @IBAction func wordcloud_1(sender: UIButton) {
        
        wordInfo(sender)
        
    }
    
    @IBAction func frustrated(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func joyful(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func happy(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Proud(sender: UIButton) {
        
        wordInfo(sender)

    }
   
    @IBAction func Nervous(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Focused(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Calm(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Scared(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Sad(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Distracted(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Energized(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Quiet(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Fierce(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Stressed(sender: UIButton) {
        wordInfo(sender)

    }
    
    @IBAction func Lazy(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Motivated(sender: UIButton) {
        
        wordInfo(sender)

    }
    
    @IBAction func Fulfilled(sender: UIButton) {
        
        wordInfo(sender)
        
    }
    
    @IBAction func One(sender: UIButton) {
        
        calendarInfo(sender)
    }
    
    @IBAction func Three(sender: UIButton) {
        
        calendarInfo(sender)
    }
    
    @IBAction func Eight(sender: UIButton) {
        
        calendarInfo(sender)
    }
    
    @IBAction func Ten(sender: UIButton) {
        
        calendarInfo(sender)
    }
    
    
    @IBAction func Fifteen(sender: UIButton) {
        
        calendarInfo(sender)
    }
    
    @IBAction func Nineteen(sender: UIButton) {
        
        calendarInfo(sender)
    }
    
    @IBAction func TwentyTwo(sender: UIButton) {
        
        calendarInfo(sender)
    }
    
    @IBAction func TwentySix(sender: UIButton) {
        
        calendarInfo(sender)
    }
    
    
    @IBOutlet weak var menuButton:UIBarButtonItem!

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
    
    func wordInfo(sender: UIButton ){
        let alert = UIAlertController(title: sender.currentTitle,
            message: ("Used 3 times this week\n" + "Used 12 times this month\r\n" + "\r\nMonthly breakdown by week day:\n" + "Monday: 2\n" + "Tuesday: 4\n" + "Wedneday: 3\n" + "Thursday: 1\n" + "Friday: 1\n" + "Saturday: 0\n" + "Sunday: 1\n"),
            preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Done", style: .Cancel , handler: nil)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    
    // make sure button title is date!
    func calendarInfo(sender: UIButton ){
        var emotionsBefore = emotions[randRange(0,upper: 8)] + ", " + emotions[randRange(0,upper: 8)]
        var emotionsAfter = emotions[randRange(0,upper: 8)] + ", " + emotions[randRange(0,upper: 8)]
        var goal = goals[randRange(0,upper: 4)]
        
        let alert = UIAlertController(title: "Day Summary",
            message: ("Goal: " + goal + "\r\nEmotions before practice: " + emotionsBefore + "\r\nEmotions after practice: " + emotionsAfter + "\r\nSatisfaction Score: 7" ),
            preferredStyle: .Alert)
        
        let cancelAction = UIAlertAction(title: "Done", style: .Cancel , handler: nil)
        alert.addAction(cancelAction)
        
        presentViewController(alert, animated: true, completion: nil)
    }
    
    
    // Random Number Generator with upper and lower bounds inclusive
    func randRange (lower : Int , upper : Int) -> Int {
        let difference = upper - lower
        return Int(Float(rand())/Float(RAND_MAX) * Float(difference + 1)) + lower
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
    //
    //        let alert = UIAlertController(title: NSLocalizedString("Delete Contact?", comment: ""), message: NSLocalizedString("This action will delete all downloaded audio files.", comment: "comment"), preferredStyle: .ActionSheet)
    //        alert.modalPresentationStyle = .Popover
    //
    //        let cancel = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .Cancel) { action in
    //
    //        }
    //        alert.addAction(cancel)
    //
    //
    //        if let presenter = alert.popoverPresentationController {
    //            presenter.sourceView = sender;
    //            presenter.sourceRect = sender.bounds;
    //        }
    //        presentViewController(alert, animated: true, completion: nil)
    
    
    
    //        // grab the view controller we want to show
    //        let storyboard = UIStoryboard (name:"Main", bundle:nil);
    //        let controller = storyboard.instantiateViewControllerWithIdentifier("Pop");
    //
    //
    //        // present the controller
    //        // on iPad, this will be a Popover
    //        // on iPhone, this will be an action sheet
    //        controller.modalPresentationStyle = .Popover;
    //        self.presentViewController(controller, animated: true, completion: nil)
    //
    //
    //        // configure the Popover presentation controller
    //        controller.popoverPresentationController?.sourceView = view
    //        controller.popoverPresentationController?.sourceRect = sender.frame
}
