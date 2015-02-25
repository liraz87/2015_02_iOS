//
//  main.swift
//  Arrays2
//
//  Created by Elad Lavi on 2/25/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation



var a1:Array<String> = Array<String>();
var fruits:[String] = [String]();
var a3 = ["A","B","C"];
a3.append("D");

fruits.append("Apples");
fruits.append("Oranges");
fruits.append("Grapes");
fruits.insert("Tomatos", atIndex: 2);
fruits.removeAtIndex(0);
a3.removeLast();
a3.removeAll(keepCapacity: true);
fruits[0] = "Red Apples";
for fruit in fruits{
    println(fruit);
}
for i in 0..<fruits.count{
    println(fruits[i]);
}




//Dictionaries:

var d1:Dictionary<String,String> = Dictionary<String,String>();
var d2 = ["elad":"qwe123","maayan":"qqwwe1","nadir":"rrrr"];
if let elad3 = d2["elad3"]{
    println(elad3);
}
if d2["elad3"] != nil {
    println(d2["elad3"]!);
}
d2["elad"] = "qwer1234";
//d2.updateValue("qwer1234", forKey: "elad3");
println(d2["elad3"]);

d2["elad"] = nil;




