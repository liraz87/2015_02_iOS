//
//  main.swift
//  MySecondCommandLineApp
//
//  Created by Elad Lavi on 2/25/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

println("Hello, World!");

print("how");
print(" are");
print(" you today?");
println();
println("have a great day.");

let i:Int = -25;
let f:Float = 3.14;
let d:Double = 99.99;
let b:Bool = false;

println("i=\(i), f=\(f), d=\(d), b=\(b)");
//it is very wise to use comments.


/*
we can also use multiline comments.
comments are used both for documentation and also to disable executation of code.

*/

let i1:Int = 5;
var i2 = 7;
var i1b:Int8 = -128;
var i1c:UInt8 = 255;
var i1d:UInt64 = 10000000000000000000;
let c1:Character = "A";
var abc = "abc";
var checkABC = abc == "ABC";
println(checkABC);

//tuples:
var rectangle1 = (0,0,50,300);
rectangle1.2 = 60;
println(rectangle1.2);
var rectangle2 = (x:0, y:0, width:200, height:100, owner:(firstName:"Elad", lastName:"Lavi"));
println(rectangle2.owner.firstName);
let (x,y,w,h) = rectangle1;
println(x);
let (_,_,_,myHeight) = rectangle1;

//optionals
var s:String?;
//s = "ABC";
if s != nil {
    println(s!); //unwrap
}else{
    println("s is nil");
}

if let myString = s {
    println(myString); //unwrap
}else{
    println("s is nil");
}


//type alising
typealias Short = Int16;
let n:Short = 15;

//scope

var someFlag = true;

if(someFlag){
    var someString = " hello";
    println(someString);
}

//println(someString);

i2 += 4;
i2 -= 3;
i2 *= 5;
i2 /= 3;
i2 %= 4;
i2++;
i2--;
++i2;

let s1 = "Hello";
let s2 = "World";
let s3 = s1 + " " + s2;
println(s3);

someFlag = x == y;
someFlag = x != y;
someFlag = x > y;
someFlag = x >= y;
//object comparsion will be done with ===  and !==

//ternary conditional operator
var s4:String = someFlag ? "yes" : "no";


//range operators

for i in 1...10{
    println(i);
}
for i in 1..<10{
    println(i);
}


someFlag = (1<2) && (3<5);
someFlag = (1<2) || (3<5);
someFlag = !(1<2);


//enums:
enum Gender{
    case Male;
    case Female;
    case Transgender;
}
var gen:Gender = Gender.Female;
gen = .Transgender;









