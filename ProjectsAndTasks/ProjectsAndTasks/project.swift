//
//  project.swift
//  ProjectsAndTasks
//
//  Created by Elad Lavi on 3/4/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

class Project: TaskCompletedListener {
    var projectName:String!;
    var tasks:[Task];
    init(projectName:String, tasks:[Task]){
        self.projectName = projectName;
        self.tasks = tasks;
    }
    
    func taskCompleted(task: Task) {
        //println("task \(task.name) is completed.");
        var done = true;
        for task in tasks{
            if !task.isCompleted {
                done = false;
                break;
            }
        }
        if done {
            println("project \(self.projectName) is completed.");
        }
    }
    
    func close(){
        tasks.removeAll(keepCapacity: false);
    }
    
    deinit{
        println("project \(self.projectName) got deinitialized.");
    }
    
}