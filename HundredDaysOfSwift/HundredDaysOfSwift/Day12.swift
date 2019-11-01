//
//  Day12.swift
//  HundredDaysOfSwift
//
//  Created by Mark Angelo Diesta on 11/1/19.
//  Copyright © 2019 Mark Angelo Diesta. All rights reserved.
//

import Foundation


class Day12 {
    
    func showDay12() {
        showHandlingMissngData()
        showUnwrappingOptionals()
        showUnwrappingWithGuard()
        showForceUnwrapping()
        showImplicitylyUnwrappedOptionals()
        showNilCoalescing()
        showOptionalChaining()
        showOptionalTry()
        showFailableInitializers()
        showTypecasting()
    }
    
    func showHandlingMissngData() {
        print("----- showHandlingMissngData -----")
        var age: Int? = nil
        age = 38
        
        print("age = \(age ?? 0)")
    }
    
    func showUnwrappingOptionals() {
        print("----- showUnwrappingOptionals -----")
        
        var name: String? = nil
        
        if let unwrapped = name {
            print("\(unwrapped.count) letters")
        } else {
            print("Missing name.")
        }
        
        let song: String? = "Shake it Off"
        
        if let unwrappedSong = song {
            print("The name has \(unwrappedSong.count) letters")
        }
        
        let currentDestination: String? = nil
        if let destination = currentDestination {
            print("We're walking to\(destination)")
        } else {
            print("We're just wondering")
        }
        
        let tableHiehgt: Double? = 100
        if let height = tableHiehgt {
            if height > 85.0 {
                print("The table is too high")
            }
        }
        
    }
    
    func showUnwrappingWithGuard () {
        print("----- showUnwrappingWithGuard -----")
        
        greet("world!")
        
        let input: Int? = 5
        if let doubled = double(number: input) {
            print("\(input ?? 0) doubled is \(doubled)")
        }
        
    }
    
    
    func greet(_ name: String?) {
        guard let unwrapped = name else {
            print("You didn't provider a name")
            return
        }
        print("Hello, \(unwrapped)")
    }
    
    func double(number: Int?) -> Int? {
        guard let number = number else {
            return nil
        }
        
        return number * 2
    }
    
    func showForceUnwrapping () {
        print("----- showForceUnwrapping -----")
        
        let str = "5"
        let num = Int(str)!
        
        print("number = \(num)")
        
    }
    
    func showImplicitylyUnwrappedOptionals () {
        print("----- showImplicitylyUnwrappedOptionals -----")
        
        let legoBricksSold: Int? = 4_000
        let numberSold = legoBricksSold!
        
        print("legoBricksSold = \(numberSold)")
    }
    
    func showNilCoalescing () {
        print("----- showNilCoalescing -----")
        
        let user = username(for: 15) ?? "Anonymous"
        
        print("Username = \(user)")
    }
    
    func username(for id: Int) -> String? {
        if id == 1 {
            return "Taylor Swift"
        } else {
            return nil
        }
    }
    
    func showOptionalChaining () {
        print("----- showOptionalChaining -----")
        
        let names = ["John", "Paul", "George", "Ringo"]
        
        let beatle = names.first?.uppercased()
        print("Beatle = \(beatle ?? "NONE")")
        
    }
    
    func showOptionalTry () {
        print("----- showOptionalTry -----")
        
        if let result = try? checkPassword("password") {
            print("Result was \(result)")
        } else {
            print("Wrong password")
        }
        
        let obvious =  try! checkPassword("password!")
        if(obvious) {
            print("OK!")
        } else {
            print("Wrong!!")
        }
        
    }
    
    enum PasswordError: Error {
        case obvious
    }
    
    func checkPassword(_ password: String) throws -> Bool {
        if password == "password" {
            throw PasswordError.obvious
        }
        return true
    }
    
    func showFailableInitializers () {
        print("----- showFailableInitializers -----")
        
        let person = Person(id: "Hello")
        print("Person id = \(person?.id ?? "NONE")")
        
    }
    
    struct Person {
        var id: String
        
        
        init?(id: String) {
            if id.count == 9 {
                self.id = id
            } else {
                return nil
            }
        }
    }
    
    func showTypecasting () {
        print("----- showTypecasting -----")
        
        let pets = [Fish(), Wolf(), Fish(), Wolf()]
        
        for pet in pets {
            if let wolf = pet as? Wolf {
                wolf.makeNoise()
            }
        }
        
    }
    
}

class Animal{}
class Fish: Animal {}
class Wolf: Animal{
    func makeNoise() {
        print("Wolf!")
    }
}
