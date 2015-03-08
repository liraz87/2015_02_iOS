//
//  task.swift
//  ProjectsAndTasks
//
//  Created by Elad Lavi on 3/4/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation



protocol TaskCompletedListener{
    func taskCompleted(task:Task);
}

class Task {
    private var _name:String;
    private var _isCompleted:Bool!;
    private var listener:TaskCompletedListener?;
    
    init(taskName: String){
        self._name = taskName;
        _isCompleted = false;
        
    }
    
    var isCompleted:Bool{
        get{
            return _isCompleted;
        }
        set{
            if newValue {
                _isCompleted = newValue;
                listener?.taskCompleted(self);
            }
        }
    }
    
    var name:String{
        get{
            return self._name;
        }
        set{
            self._name = newValue;
        }
    }
    
    func setTaskCompletedListener(listener:TaskCompletedListener){
        self.listener = listener;
    }
    
    deinit{
        println("task \(self._name) got deinitialized.");
    }
    
}