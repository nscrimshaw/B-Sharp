//
//  NewsTableViewController.swift
//  SidebarMenu
//
//  Created by Simon Ng on 2/2/15.
//  Copyright (c) 2015 AppCoda. All rights reserved.
//

import UIKit

class NewsTableViewController: UITableViewController {
    @IBOutlet var menuButton:UIBarButtonItem!
    
    var numberOfCells = 6
    
    var heartButtonCt: [String] = ["14", "23", "30", "5", "19", "2", "44"]
    var community: [String] = ["Just hit a high A!", "Just finished learning a new song for my GF. Going to propose this weekend...", "I love how many notes I get to play on any given piece... not,", "So excited to perform in downtown Seattle tomorrow! Come jam with me :)", "Love this new banjo I got! Ready to strum.", "Terrified of attempting Clair de Lune tomorrow for my recital :O", "Finally broke out the old trumpet. Can't wait to wake the neighbors lol"]
    var authorLabel: [String] = ["Natalie", "Jose", "Felicity", "Oliver", "Barry", "John", "Lee",]
    var imageNames: [String] = ["mic", "guitar", "triangle", "sax", "banjo", "piano", "trumpet"]

    override func viewDidLoad() {
        super.viewDidLoad()

        if revealViewController() != nil {
//            revealViewController().rearViewRevealWidth = 62
            menuButton.target = revealViewController()
            menuButton.action = "revealToggle:"


            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
            
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return numberOfCells
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! NewsTableViewCell

        // Configure the cell...
       
          //  cell.postImageView.image = UIImage(named: "watchkit-intro")
            cell.heartButton.setTitle(heartButtonCt[indexPath.row], forState: UIControlState.Normal)
            cell.postTitleLabel.text = community[indexPath.row]
            cell.authorLabel.text = authorLabel[indexPath.row]
            cell.authorImageView.image = UIImage(named: imageNames[indexPath.row])

        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
