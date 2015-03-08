//
//  alarmsystem.swift
//  AlarmSystem
//
//  Created by Elad Lavi on 3/4/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

protocol AlarmListener{
    func alarm(address:String);
}

class AlarmSystem {
    var address:String?;
    
    var listeners:[AlarmListener] = [AlarmListener]();
    
    func addAlarmListener(listener:AlarmListener){
        listeners.append(listener);
    }
    
    func triggerTheAlarm(){
        for listener in listeners{
            listener.alarm(self.address);
        }
    }
    
}