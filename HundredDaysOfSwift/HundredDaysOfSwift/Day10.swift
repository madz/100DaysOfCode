//
//  Day10.swift
//  HundredDaysOfSwift
//
//  Created by Mark Angelo Diesta on 10/29/19.
//  Copyright © 2019 Mark Angelo Diesta. All rights reserved.
//

import Foundation


class Day10 {
    func showDay10() {
        showCreatingClass()
        showClassInheritance()
        showOveridingMethods()
        showCopyObjects()
        showDeInitializers()
    }
    
}

func showCreatingClass() {
    print("----- showCreatingClass -----")
    let poppy = Dog(name: "Poppy", breed: "Poodle")
    print(poppy)
}

func showClassInheritance() {
    print("----- showClassInheritance -----")
    let poodle = Poodle(name: "Doggy")
    print(poodle)
}

func showOveridingMethods() {
    print("----- showOveridingMethods -----")
    let poodle = Poodle(name: "Doggy")
    poodle.makeNoise()
}

func showCopyObjects() {
    print("----- showCopyObjects -----")
    let singer = Singer()
    print(singer.name)
    
    let singerCopy = singer
    singerCopy.name = "Justin Bieber"
    print("singer.name = \(singer.name)")
    print("singerCopy.name = \(singerCopy.name)")
}

func showDeInitializers() {
    for _ in 1...3 {
        let person = Person()
        person.printGreeting()
    }
}


class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override func makeNoise() {
        print("Yip!")
    }
}

class Singer {
    var name = "Taylor Swift"
    
    
}

class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    deinit {
        print("\(name) is no more!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}
