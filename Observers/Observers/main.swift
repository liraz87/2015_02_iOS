//
//  main.swift
//  Observers
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

class Person {
    var name:String = "name";
    var age:Int = 0{
        willSet{
            println("age is about to change to \(newValue)");
        }
        didSet{
            println("age was just changed to \(age)");
        }
    }
    
    
    func profile() ->String{
        return "I'm \(self.name) and I'm \(self.age) years old";
    }
}


var p = Person();
p.age = 30;













