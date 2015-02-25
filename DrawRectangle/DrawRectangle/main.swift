//
//  main.swift
//  DrawRectangle
//
//  Created by Elad Lavi on 2/25/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

let width:Int = 20;
let height:Int = 10;
let x:Int = 5;
let y:Int = 20;

for i in 0...y{
    println();
}
for i in 0...height{
    for j in 0...x{
        print(" ");
    }
    for j in 0...width{
        print(i>0 && i<height && j>0 && j<width ? " " : "*");
    }
    println();
}
