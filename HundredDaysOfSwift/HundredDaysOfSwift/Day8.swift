//
//  Day8.swift
//  HundredDaysOfSwift
//
//  Created by Mark Angelo Diesta on 10/27/19.
//  Copyright © 2019 Mark Angelo Diesta. All rights reserved.
//

import Foundation


class Day8 {
    
    struct Sport {
        var name: String
        var isOlympicSport: Bool
        
        var olympicStatus: String {
            if isOlympicSport {
                return "\(name) is an Olympic sport"
            } else {
                return "\(name) is not an Olympic sport"
            }
        }
    }
    
    struct Progress {
        var task: String
        var amount: Int {
            didSet {
                print("\(task) is now \(amount)% complete")
            }
        }
    }
    
    struct City {
        var population: Int
        func collecTaxes() -> Int {
            return population * 1000
        }
    }
    
    struct Person {
        var name: String
        
        mutating func makeAnonymous() {
            name = "Anonymous"
        }
    }
    
    func showDay8() {
        showCreatingStructs()
        showComputedProperties()
        showPropertiesObservers()
        showStructMethod()
        showMutatingMethods()
        showPropertiesMethodStrings()
        showPropertiesMethodArray()
    }
    
    func showCreatingStructs() {
        print("----- showCreatingStructs -----")
        var tennis = Sport(name: "Tennis", isOlympicSport: true)
        tennis.name = "Lawn Tennis"
        print(tennis.name)
    }
    
    func showComputedProperties() {
        print("----- showComputedProperties -----")
        
        let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
        print(chessBoxing.olympicStatus)
    }
    
    func showPropertiesObservers() {
        print("----- showPropertiesObservers -----")
        var progress = Progress(task: "Loading data", amount: 0)
        
        progress.amount = 30
        progress.amount = 60
    }
    
    func showStructMethod() {
        print("----- showStructMethod -----")
        
        let london = City(population: 9)
        
        print(london.collecTaxes())
    }
    
    func showMutatingMethods() {
        print("----- showMutatingMethods -----")
        
        var person = Person(name: "Ed")
        person.makeAnonymous();
        
        print("Person name = \(person.name)")
        
    }
    
    func showPropertiesMethodStrings() {
        print("----- showPropertiesMethodStrings -----")
        
        let string = "Do or do not, there is no try"
        
        print(string.count)
        print(string.hasPrefix("Do"))
        print(string.uppercased())
        print(string.hasPrefix("i"))
    }
    
    func showPropertiesMethodArray() {
        print("----- showPropertiesMethodArray -----")
        
        var toys = ["Woody"]
        
        print(toys.count)
        print(toys.append("Buzz"))
        print(toys.sorted())
        print(toys.remove(at: 0))
    }
}


