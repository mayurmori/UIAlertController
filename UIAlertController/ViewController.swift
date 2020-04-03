//
//  ViewController.swift
//  UIAlertController
//
//  Created by Mayur Mori on 10/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

// The first benefit of using the UIAlertController class is the absence of a delegate protocol to handle user interaction. This means that we only need to update the implementation of the btnClick4Alert action.

class ViewController: UIViewController {
    
    // MARK: - IBOUTLET -
    @IBOutlet weak var btnClick4Alert: UIButton!
    
    // MARK: - IB ACTIONS -
    @IBAction func btnClick4Alert(_ sender: UIButton) {
        
        // Initialize Alert Controller
        let alertController = UIAlertController(title: "Alert", message: "Are you okay?", preferredStyle: .alert)
        
        // Initialize Actions
        let yesAction = UIAlertAction(title: "Yes", style: .default) { (action) -> Void in
            print("The user is okay.")
        }
        
        let noAction = UIAlertAction(title: "No", style: .default) { (action) -> Void in
            print("The user is not okay.")
        }
        
        //        let mayur = UIAlertAction(title: "MAYUR", style: .default) { (action) -> Void in
        //            print("The user is Mayur")
        //        }
        
        // Add Actions
        alertController.addAction(yesAction)
        alertController.addAction(noAction)
        //        alertController.addAction(mayur)
        
        // Present Alert Controller
        self.present(alertController, animated: true, completion: nil)
        
        /*
         let alertController = UIAlertController(title: "Alert", message: "This is an alert.", preferredStyle: .alert)
         
         let action1 = UIAlertAction(title: "Default", style: .default) { (action:UIAlertAction) in
         print("You've pressed default");
         }
         
         let action2 = UIAlertAction(title: "Cancel", style: .cancel) { (action:UIAlertAction) in
         print("You've pressed cancel");
         }
         
         let action3 = UIAlertAction(title: "Destructive", style: .destructive) { (action:UIAlertAction) in
         print("You've pressed the destructive");
         }
         
         alertController.addAction(action1)
         alertController.addAction(action2)
         alertController.addAction(action3)
         self.present(alertController, animated: true, completion: nil)
         */
    }
}

/*
 The initialization is pretty easy. We pass in a title, a message, and, most importantly, set the preferred style to UIAlertControllerStyle.Alert or .Alert for short. The preferred style tells the operating system if the alert controller needs to be presented as an action sheet, .ActionSheet, or a modal alert, .Alert.
 
 Instead of providing titles for the buttons and handling user interaction through the UIAlertViewDelegate protocol, we add actions to the alert controller. Every action is an instance of the UIAlertAction class. Creating an UIAlertAction is simple. The initializer accepts a title, a style, and a handler. The style argument is of type UIAlertActionStyle. The handler is a closure, accepting the UIAlertAction object as its only argument.
 
 The use of handlers instead of a delegate protocol makes the implementation of a modal alert more elegant and easier to understand. There's no longer a need for tagging alert views if you're working with multiple modal alerts.
 
 Before we present the alert controller to the user, we add the two actions by calling addAction(_:) on the alertController object. Note that the order of the buttons of the modal alert is determined by the order in which the actions are added to the alert controller.
 
 Because the UIAlertController class is a UIViewController subclass, presenting the alert controller to the user is as simple as calling presentViewController(_:animated:completion:), passing in the alert controller as the first argument.
 */
