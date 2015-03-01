//
//  main.swift
//  Classes
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation


func myFunc(somePerson: Person){
    somePerson.age *= 2;
}

let p = Person();
p.name = "Matt";
p.age = 40;

let p2 = p;
p2.age = 50;

myFunc(p);



println(p.profile());

var p3 = Person();
p3.name = "Matt";
p3.age = 100;

var b1 = p !== p3;
println(b1)






