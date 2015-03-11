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
        super.viewDidLoad()
        controller = UIAlertController(title: "The title", message: "hi dude!", preferredStyle: UIAlertControllerStyle.Alert);
        let action = UIAlertAction(title: "Done", style: UIAlertActionStyle.Default) { (paramAction:UIAlertAction!) -> Void in
            println("the done button was tapped");
        };
        controller?.addAction(action);
        
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

