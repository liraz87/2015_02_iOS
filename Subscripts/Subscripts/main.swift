//
//  main.swift
//  Subscripts
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

var myArray:[Int] = [Int]();
myArray.append(4);
myArray.append(19);
myArray[1] = 30;
println(myArray[0]);

class MyClass{
    private var a1 = "hi";
    private var a2 = "byte";
    private var a3 = "hello";
    private var a4 = "default";
    
    subscript(index: Int) ->String{
        get{
            var temp:String;
            switch(index){
            case 0:
                temp = a1;
                break;
            case 1:
                temp = a2;
                break;
            case 2:
                temp = a3;
                break;
            default:
                temp = a4;
            }
            return temp;
        }set(newValue){
            switch(index){
            case 0:
                a1 = newValue;
                break;
            case 1:
                a2 = newValue;
                break;
            case 2:
                a3 = newValue;
                break;
            default:
                a4 = newValue;
            }
        }
    }
}
var myClass = MyClass();
myClass[0] = "potato";
println(myClass[0]);
