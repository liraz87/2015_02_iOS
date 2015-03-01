//
//  main.swift
//  MathFunctions
//
//  Created by Elad Lavi on 2/25/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation


func distance(x:Int, y:Int)->Int{
    var small = x;
    var large = y;
    if(x>y){
        small = y;
        large = x;
    }
    var counter = 0;
    while(small+counter<large){
        counter++;
    }
    return counter;
}

func product(x:Int, y:Int)->Int{
    var small = x;
    var large = y;
    if(x>y){
        small = y;
        large = x;
    }
    var sum = 0;
    for i in 1...small{
        sum += large;
    }
    return sum;
}



func quotient(x:Int, y:Int)->Int{
    if(y==0){
        return -1;
    }
    var counter = 0;
    for var i=y ; i<=x ; i+=y{
        counter++;
    }
    return counter;
}

func remainder(x:Int, y:Int)->Int{
    if(y==0){
        return -1;
    }
    return distance(x, product(quotient(x, y),y));
}

println(remainder(8,3))

//Closures:







