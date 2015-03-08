//
//  main.swift
//  ProjectsAndTasks
//
//  Created by Elad Lavi on 3/4/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation



var t:[Task]? = [
    Task(taskName: "Choose receipe"),
    Task(taskName: "Buy groceries"),
    Task(taskName: "Prepare ingridients")
];
var project:Project? = Project(projectName: "Cook Dinner", tasks: t!);


for task in t!{
    task.setTaskCompletedListener(project!);
}
t![0].isCompleted = true;
t![1].isCompleted = true;
t![2].isCompleted = true;
project!.close();

project = nil;
t = nil;


