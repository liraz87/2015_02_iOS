//
//  main.swift
//  More About Functions
//
//  Created by Elad Lavi on 3/8/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

func isPrime(number:Int)->Bool{
    if(number<3){
        return true;
    }
    var temp:Int = 2;
    let num = number + 1;
    while (temp * temp < num){
        if number % temp == 0 {
            return false;
        }
        temp++;
    }
    return true;
}

println(isPrime(13));







