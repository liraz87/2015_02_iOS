//
//  main.swift
//  Inheritance
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

class Person {
    var name:String;
    var age:Int;
    
    func profile() ->String{
        return "I'm \(self.name) and I'm \(self.age) years old";
    }
    
    init(){
        println("in initializer of Person.");
        self.name = "Name";
        self.age = 0;
        
    }
    
    init(name: String, age:Int){
        self.name = name;
        self.age = age;
    }
    
}

class Employee : Person{
    var employeeNumber = 123456;
    var hourlyRate = 12.00;
    

    override func profile() -> String {
        return super.profile()+". My Hourly Rate is \(self.hourlyRate) and my employee number is: \(self.employeeNumber)";
    }
    
}

var e1 = Employee(name: "Jim", age: 18);
e1.employeeNumber = 1;
e1.hourlyRate = 15.50;
println(e1.profile());







