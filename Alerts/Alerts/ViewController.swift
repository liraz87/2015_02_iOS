//
//  ViewController.swift
//  Alerts
//
//  Created by Elad Lavi on 3/11/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var controller: UIAlertController?;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        controller = UIAlertController(title: "Choose how you would like to share this photo", message: "You cannot bring back a deleted photo", preferredStyle: UIAlertControllerStyle.ActionSheet);
        
        let actionEmail = UIAlertAction(title: "Via email", style: UIAlertActionStyle.Default) { (paramAction: UIAlertAction!) -> Void in
            //a code to run when user clicks email
        };
        
        let actionImessage = UIAlertAction(title: "Via iMessage", style: UIAlertActionStyle.Default) { (paramAction: UIAlertAction!) -> Void in
            //send over iMessage
        };
        
        let actionDelete = UIAlertAction(title: "Delete Photo", style: UIAlertActionStyle.Destructive) { (paramAction:UIAlertAction!) -> Void in
            //delete the photo
        }
        
        controller?.addAction(actionEmail);
        controller?.addAction(actionImessage);
        controller?.addAction(actionDelete);
        
        /*
        controller = UIAlertController(title: "The title", message: "hi dude!", preferredStyle: UIAlertControllerStyle.Alert);
        controller?.addTextFieldWithConfigurationHandler({ (textField: UITextField!) -> Void in
            textField.placeholder = "XXXXXXXXXXXXX"
        });
        */
        //let action = UIAlertAction(title: "Done", style: UIAlertActionStyle.Default) { (paramAction:UIAlertAction!) -> Void in
        //    println("the done button was tapped");
        //};
        /*
        let action = UIAlertAction(title: "Next", style: UIAlertActionStyle.Default) { [weak self](paramAction:UIAlertAction!) -> Void in
            
            if let textFields = self!.controller?.textFields{
                let theTextFields = textFields as [UITextField];
                let phoneNumber = theTextFields[0].text;
                println("phoneNumber: \(phoneNumber)");
            }
            
        }
        controller?.addAction(action);
        */
        
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        self.presentViewController(controller!, animated: true, completion: {() in
            println("controller is presented");
        });
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

