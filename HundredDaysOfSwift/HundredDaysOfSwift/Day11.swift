//
//  Day11.swift
//  HundredDaysOfSwift
//
//  Created by Mark Angelo Diesta on 10/31/19.
//  Copyright © 2019 Mark Angelo Diesta. All rights reserved.
//

import Foundation

class Day11 {
    
    func showDay11() {
        showProtocols()
        showProtocolsInheritance()
        showExtensions()
        showProtocolOrientedProgramming()
    }
    
    func showProtocols() {
        print("----- showProtocols -----")
        let user = User(id: "123")
        
        let d11 = Day11()
        
        d11.displayID(thing: user)
    }
    
    func displayID(thing: Identifiable) {
        print("My ID is \(thing.id)")
    }
    
    func showProtocolsInheritance() {
        print("----- showProtocolsInheritance -----")
    }
    
    func showExtensions() {
        print("----- showExtensions -----")
        
        let x = 10
        
        print("square of \(x) = \(x.squared())")
        print("number = \(x.isEven ? "Even" : "Odd")")
    }
    
    func showProtocolOrientedProgramming() {
        print("----- showProtocolOrientedProgramming -----")
        
        let twostraws = User(id: "twostraws")
        twostraws.identify()
        
    }
    
}

struct User: Identifiable {
    var id: String
    
}

protocol Identifiable {
    var id: String {
        get set
    }
}

protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation  {}

extension Int {
    func squared() -> Int {
        return self * self
    }
}

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

extension Identifiable {
    func identify() {
        print("My ID is \(id)")
    }
}


