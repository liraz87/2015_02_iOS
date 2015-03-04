//
//  main.swift
//  Type Casting
//
//  Created by Elad Lavi on 3/4/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

let f1 = 9.99;
let i1 = Int(f1);
let d1 = Double(f1);
let b1 = Bool(f1);
let s1 = toString(f1);

class Person{
    var name: String = "Name";
    var age:Int = 0;
    var health:Health = Health();
    
    func profile() -> String{
        return "I'm \(self.name) and I'm \(self.age) years old."
    }
    
    func doPersonThings(){
        println("\(self.name) is doing person things...");
    }
    
    class Health {
        var pulse:Int = 80;
        var bmi:Int = 20;
        
        func profile() -> String{
            return "Pulse: \(self.pulse), BMI:\(self.bmi)";
        }
    }
    
}

class Employee : Person{
    var employeeNumber = 123456;
    var hourlyRate = 12.00;
    
    func doEmployeeThings(){
        println("\(self.name) is doing employee things");
    }
}

var e1 = Employee();
e1.name = "Jim";

e1.doPersonThings();
e1.doEmployeeThings();

var p1 = Person();
p1.name = "Joe";
p1.age = 40;

var a1 = [e1, p1];

var p2 = Person();
var e2 = Employee();
a1.append(e2);
a1.append(p2);

//let e = a1[0] as Employee;
//e.doEmployeeThings();
for person in a1{
    println(person.profile());
    if (person is Employee) {
        let e = person as Employee;
        e.doEmployeeThings();
    }
}




extension Person{
    var dogYears:Float {
        get{
            return Float(self.age) / 7.0;
        }
        set{
            self.age = Int(round(newValue * 7));
        }
    }
    
}
p2.age = 8;
println(p2.dogYears);

p2.health.bmi = 100;
println(p2.health.profile());

var h:Person.Health = Person.Health();
h.bmi = 19;



