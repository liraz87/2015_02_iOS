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
        println("task \(task.name) is completed.");
    }
    
    
}