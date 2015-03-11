//
//  ViewController.swift
//  Label
//
//  Created by Elad Lavi on 3/11/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var label: UILabel!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label = UILabel(frame: CGRect(x: 20, y: 100, width: 93, height: 70));
        label.numberOfLines = 3;
        label.lineBreakMode = NSLineBreakMode.ByClipping;
        label.text = "hello world, how are you today? are you having fun today?";
        label.font = UIFont.boldSystemFontOfSize(14);
        view.addSubview(label);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

