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




func printPrimeFactors(number:Int){
    var temp:Int = 2;
    let num = number + 1;
    var isPrime = true;
    var x:Int = 0, y:Int = 0;
    
    while (temp * temp < num){
        if number % temp == 0 {
            isPrime = false;
            x = temp;
            y = number/temp;
        }
        temp++;
    }
    
    if isPrime {
        print("\(number),");
    }else {
        printPrimeFactors(x);
        printPrimeFactors(y);
    }
}

func GCD(x:Int, y:Int)->Int{
    var a = x;
    var b = y;
    var temp:Int;
    while (b != 0){
        temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}



//return tuple:
func getGasPrices() -> (Double, Double, Double){
    return (4.5, 6.8, 6.9);
}

//three dots
func sum(numbers:Int...)->Int{
    var sum = 0;
    for num in numbers {
        sum += num;
    }
    return sum;
}
//println(sum(4,5,19));

let prices = getGasPrices();
println(prices.0);


//function defined inside a function
func funcA()->Int{
    func funcB()->Int{
        return 8;
    }
    return funcB() * 2;
}

func hasAnyMatches(list:[Int], condition: Int -> Bool) ->Bool {
    for item in list {
        if condition(item) {
            return true;
        }
    }
    return false;
}

func lessThanTen(number:Int) -> Bool{
    return number < 10;
}

let numbers = [20, 19, 7, 12];
let doesHave = hasAnyMatches(numbers, lessThanTen);
//println(doesHave);

let doesHave2 = hasAnyMatches(numbers, {(number:Int)->Bool in
    return number < 10;
});
//println(doesHave);


//external parameter names:
func myFuncA(param: Int, secondParam: Int){
    println(param);
}
func myFuncB(theParam param: Int){
    println(param);
}

myFuncA(3, 14);
myFuncB(theParam: 3);
func devide(x:Int, by y:Int)->Int{
    return x/y;
}
devide(8, by: 4);

func myFuncC(#number:Int){
    println(number);
}
myFuncC(number: 8);


//default parameter values:


func devide2(x:Int, y:Int = 2)->Int{
    return x/y;
}
println(devide2(8,y: 8));


//changing values of arguments

func myFuncD(var x:Int){
    x++;
    println(x);
}
var x = 8;
myFuncD(x);
println(x);

func myFuncE(inout x:Int){
    x++;
    println(x);
}
var y = 8;
myFuncE(&y);
println(y);


