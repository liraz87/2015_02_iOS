//
//  main.swift
//  Arrays
//
//  Created by Elad Lavi on 2/22/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

//println("Hello, World!");
var s = "hello";
var x = 8;

var a1:Array<String> = Array<String>();
var a2:[String] = [String]();
var a3 = ["a", "b", "c"];

a1.append("hello");
a1.append(" ");
a1.append("world");
a1.insert("hi,", atIndex: 0);
a1[2] = "bye";
a1.removeAtIndex(0);
a1.removeLast();
a1.removeAll(keepCapacity: true);

for i in 0..<a1.count{
    print(a1[i]);
}
println();
a2.append("hello");
a2.append("world");
for i in a2{
    println(i);
}

//dictionaries:
var d1:Dictionary<String, String> = ["elad":"qwe123", "maayan":"qqqwww1", "nadir":"dfdfdf"];


println(d1["elad"]!);


d1["elad"] = "tytyty";
var d2:Dictionary<String,Int> = ["elad":3, "maayan":5];




