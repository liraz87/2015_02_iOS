//
//  Person.swift
//  ClassTypeProperties
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation


var counter:Int = 0;

class Person {
    var name:String = "name";
    var age:Int = 0;
    //class var personCounter:Int = 0;
    init(){
        counter++;
    }
    
    func profile() ->String{
        return "I'm \(self.name) and I'm \(self.age) years old";
    }
    
    class var numberOfPersons:Int{
        return counter;
    }
    
    class func getNumberOfPersons()->Int {
        return counter;
    }
}
