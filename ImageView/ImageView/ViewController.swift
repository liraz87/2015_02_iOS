//
//  ViewController.swift
//  ImageView
//
//  Created by Elad Lavi on 3/11/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let image = UIImage(named: "lion");
    var imageView: UIImageView!;


    /*
    required init(coder aDecoder: NSCoder) {
        imageView = UIImageView(image: image);
        super.init(coder: aDecoder);
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        imageView = UIImageView(frame: view.bounds);
        imageView.contentMode = UIViewContentMode.ScaleAspectFit;
        imageView.image = image;
        imageView.center = view.center;
        view.addSubview(imageView);
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

