//
//  UploadedViewController.swift
//  Insty
//
//  Created by Savannah McCoy on 6/24/16.
//  Copyright © 2016 Savannah McCoy. All rights reserved.
//

import UIKit
import Parse

class UploadedViewController: UIViewController {

    let newUser = PFUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func LogOutAction(sender: UIButton) {
        
        PFUser.logOutInBackgroundWithBlock { (error: NSError?) in
            // PFUser.currentUser() will now be nil
            
            
            self.performSegueWithIdentifier("LoggedOut", sender: nil)
            
            
        }
        
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
