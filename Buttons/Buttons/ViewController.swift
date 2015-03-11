//
//  ViewController.swift
//  Buttons
//
//  Created by Elad Lavi on 3/11/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var button: UIButton!
    
    func buttonIsPressed(sender: UIButton){
        println("button is pressed.");
    }
    
    func buttonIsTapped(sender: UIButton){
        println("button is tapped");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let normalImage = UIImage(named: "rect_blue");
        let highlightedImage = UIImage(named: "rect_red");
        
        button = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton;
        button.setBackgroundImage(normalImage, forState: UIControlState.Normal);
        button.setBackgroundImage(highlightedImage, forState: UIControlState.Highlighted);
        
        //button = UIButton.buttonWithType(UIButtonType.System) as? UIButton;
        button.frame = CGRect(x: 110, y: 70, width: 120, height: 44);
        button.setTitle("Press Me", forState: UIControlState.Normal);
        button.setTitle("I'm Pressed", forState: UIControlState.Highlighted);
        
        button.addTarget(self, action: "buttonIsPressed:", forControlEvents: UIControlEvents.TouchDown);
        button.addTarget(self, action: "buttonIsTapped:", forControlEvents: UIControlEvents.TouchUpInside);
        view.addSubview(button);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

