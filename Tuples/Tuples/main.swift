//
//  main.swift
//  Tuples
//
//  Created by Elad Lavi on 2/22/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

//tuples:
let rectangle1 = (0,0,200,100);
let rectangle2 = (x:0, y:0, width: 200, height: 100);

let (a,b,c,d) = rectangle1;
println("a=\(a), b=\(b), c=\(c), d=\(d)");

let (_,_,_,e) = rectangle1;
println("the value of c is \(e)");

println(rectangle1.2);
println(rectangle2.width);

var rectangle3 = (x:0, y:0, width:300, height:500);
rectangle3.x = 50;
println(rectangle3);


//optionals:
var s:String? = nil;
//s = "hello";
//var s2:String;

if (s != nil){
        println(s!);
}else{
    println("nil");
}


if let s2 = s{
    println(s2);
}else{
    println("nil");
}

println(s);

//type aliasing:
typealias YesNo = Bool;
var f:YesNo;
f = true;

//scope:
if f{
    var someVariable = "some variable";
    println(someVariable);
    println(rectangle1);
}
//println(someVariable); will not work because someVariable doesn't exist in this scope.

//multiple assignment:
let (x1 , x2) = (4, 5);

var x = 7;
x += 3;
x -= 3;
x *= 2;
x /= 2;
x %= 4;
x  = (2 + 3) * 4;
x++;
x--;
++x;
--x;
println(x);


var y = 19;
f = x==y;
f = x != y;
f = x > y;
f = x < y;
f = x <= y;
println(f);

var myString = x<y ? "hi" : "bye";

for i in 1...10{
    println("the value of i is \(i)");
}

for i in 0..<10{
    println("the value of i is \(i)");
}


var b1:Bool = true;
var b2:Bool = true;
if b1 && b2{
    println("b2 and b1");
}



if (1 < 2 && 3 > -1) || 1 == 3{
    
}

//enums

enum Gender{
    case Male
    case Female
    case Transgender
}

var myGender:Gender = Gender.Male;
var gen2 = Gender.Transgender;
var gen3:Gender;
gen3 = .Female;

let gen4:Gender = .Female;






