//
//  DateOfBirth.swift
//  Lazy
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

class DateOfBirth {
    
    init(){
        println("in DateOfBirth init()");
        year = 1900;
        //month = 1;
        day = 1;
    }
    
    var year:Int;
    var month:Int?;
    var day:Int;
}