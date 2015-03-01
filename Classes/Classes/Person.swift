//
//  Person.swift
//  Classes
//
//  Created by Elad Lavi on 3/1/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation
class Person{
    private var _name: String = "Name";
    private var _age:Int = 0;
    
    var name:String{
        get{
            return _name;
        }
        set{
            _name = newValue;
        }
    }
    
    var age:Int{
        get{
            return _age;
        }
        set{
            _age = newValue;
        }
    }
    
    
    func profile() -> String{
        return "I'm \(self._name) and I'm \(self._age) years old";
    }
    
    
    
    
}
