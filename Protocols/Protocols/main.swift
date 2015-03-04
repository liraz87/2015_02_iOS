//
//  main.swift
//  Protocols
//
//  Created by Elad Lavi on 3/4/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

protocol Printable{
    func print();
}

class Document:Printable{
    func print() {
        println("printing documents");
    }
}

class Form:Printable{
    func print() {
        println("printing form");
    }
}

class Image{
    
}

class Picture:Image, Printable{
    func print() {
        println("printing picture");
    }
}

let doc = Document();
let form = Form();
let pic = Picture();

let printables:[Printable] = [doc, form, pic];

for itemToPrint in printables{
    //itemToPrint.print();
}


func download(printable:Printable){
    //create new thread
    //doing things that takes a lot of time in background
    printable.print();
}



class MyClass {
    var printable:Printable?;
    func setPrintable(p:Printable){
        self.printable = p;
    }
    
    func go(){
        printable?.print();
    }
    
}


var myObject = MyClass();
myObject.setPrintable(pic);
myObject.go();





//download(doc);
//println("after call to download()");

