//
//  main.swift
//  Inheritance
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

class Person {
    var name:String!;
    var age:Int!;
    var father:Person?;
    
    func profile() ->String{
        return "I'm \(self.name) and I'm \(self.age) years old";
    }
    
    convenience init(){
        println("in initializer of Person.");
        self.init(name:"name");
    }
    
    convenience init(name:String){
        self.init(name: name, age: 18);
    }
    
    init(name: String, age:Int){
        self.name = name;
        self.age = age;
    }
    
    deinit{
        println("in deinit of Person");
    }
    
}

class Employee : Person{
    var employeeNumber:Int!;
    var hourlyRate:Float!;

    init(name: String, age: Int, employeeNumber:Int, hourlyRate:Float) {
        super.init(name: name, age: age);
        self.employeeNumber = employeeNumber;
        self.hourlyRate = hourlyRate;
    }
    
    override convenience init(name: String, age: Int) {
        self.init(name: name, age: age, employeeNumber: 123456, hourlyRate: 12.00);
    }

    override func profile() -> String {
        return super.profile() + ". My Hourly Rate is \(self.hourlyRate) and my employee number is: \(self.employeeNumber)";
    }
    
}

var e1:Employee? = Employee(name: "Jim", age: 18);
e1!.employeeNumber = 1;
e1!.hourlyRate = 15.50;
println(e1!.profile());
var e2:Employee? = Employee(name: "Joe", age: 50);
e1!.father = e2;
//e1 = nil;
e2 = nil;
var e3 = Employee();
println(e3.age);
//Exercise:
//create a class that will represent a project, and class that will represnt a task.
// a project has a name and has its tasks. A task has a name and an indication if it is completed or not.
// the goal is that a method in project object will be invoked and print when all tasks are completed.






