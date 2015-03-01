//
//  Person.swift
//  Lazy
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation
class Person {
    var name:String = "Name";
    var age:Int = 0;
    lazy var dateOfBirth:DateOfBirth = DateOfBirth();
}