//
//  main.swift
//  ClassTypeProperties
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation


struct Rectangle {
    init() {
        Rectangle.counter++;
    }
    
    var x:Int = 0;
    var y:Int = 0;
    var width:Int = 0;
    var height:Int = 0;
    
    static var counter = 0;
}

var r = Rectangle();
var r2 = Rectangle();
println(Rectangle.counter);

var p = Person();
p = Person();

println(Person.numberOfPersons);
