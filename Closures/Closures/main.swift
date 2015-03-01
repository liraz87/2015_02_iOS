//
//  main.swift
//  Closures
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation


var alpha = ["D", "E", "A", "C", "B"];


/*
let alpha_sorted = sorted(alpha, { (s1: String, s2: String) -> Bool in
    return s1 < s2;
});
*/


let closure = { (s1: String, s2: String) -> Bool in
    return s1 > s2;
};

/*
let alpha_sorted = sorted(alpha, closure);
*/

//println(alpha_sorted);

func bubbleSort(array:[AnyObject])->[AnyObject]{
    var sortedArray = [AnyObject]();
    for i in 0..<array.count{
        sortedArray.append(array[i]);
    }
    var counter:Int = sortedArray.count - 1;
    var isSorted:Bool = false;
    
    while(!isSorted){
        isSorted = true;
        for i in 0..<counter{
            if closure(sortedArray[i] as String, sortedArray[i+1] as String){
                let temp: (AnyObject) = sortedArray[i];
                sortedArray[i] = sortedArray[i+1];
                sortedArray[i+1] = temp;
                isSorted = false;
            }
        }
        counter--;
    }

    return sortedArray;
}
let sortedArray = bubbleSort(alpha);
println(sortedArray);

