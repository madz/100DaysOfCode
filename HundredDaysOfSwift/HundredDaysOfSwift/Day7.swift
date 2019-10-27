//
//  Day7.swift
//  HundredDaysOfSwift
//
//  Created by Mark Angelo Diesta on 10/26/19.
//  Copyright © 2019 Mark Angelo Diesta. All rights reserved.
//

import Foundation


class Day7 {
    
    
    func showDay7() {
        showClosureAsParameter()
        showClosureAsParameterWithReturnValues()
        showShortHandParameterNames()
        showClosureWithMultipleParameter()
        showReturningClosureFromFunctions()
        showClosureCapturingValues()
    }
    
    func showClosureAsParameter() {
        print("----- showClosureAsParameter -----")
        travel { (place: String) in
            print("I'm going to \(place) in my car")
            
        }
        
        getDirections(to: "London") { (directions: [String]) in
            print("I'm getting my car.")
            for direction in directions {
                print(direction)
            }
        }
    }
    
    func travel(action: (String) -> Void) {
        print("I'm getting ready to go.")
        action("London")
        print("I arrived!")
    }
    
    func getDirections(to destination: String, travel: ([String]) -> Void) {
        let directions = [
            "Go straight ahead",
            "Turn left onto Station Road",
            "Turn right onto High Street",
            "You have arrived at \(destination)"
        ]
        travel(directions)
    }
    
    func showClosureAsParameterWithReturnValues() {
        print("----- showClosureAsParameterWithReurnValues -----")
        travel1 { (place: String) -> String in
            return "I'm going to \(place) in my car"
        }
    }
    
    func showShortHandParameterNames() {
        print("----- showClosureAsParameter -----")
        travel1 {
            "I'm going t0 \($0) in my car"
        }
    }
    
    func travel1(action: (String) -> String) {
        print("I'm getting ready to go")
        let description = action("London")
        print(description)
        print("I arrived!")
    }
    
    func showClosureWithMultipleParameter() {
        print("----- showClosureWithMultipleParameter -----")
        travel2 {
            "I'm going t0 \($0) at \($1) miles per hour"
        }
    }
    
    func travel2(action: (String, Int) -> String) {
        print("I'm getting ready to go")
        let description = action("London", 60)
        print(description)
        print("I arrived!")
    }
    
    func showReturningClosureFromFunctions() {
        print("----- showReturningClosureFromFunctions -----")
        
        let result = travel3()
        result("London")
        result("London")
        result("London")
    }
    
    func travel3() -> (String) -> Void {
        return {
            print("I'm going to \($0)")
        }
    }
    
    func showClosureCapturingValues() {
        print("----- showClosureCapturingValues -----")
        
        let result = travel4()
        result("London")
        result("London")
        result("London")
    }
    
    func travel4() -> (String) -> Void {
        var counter = 0
        
        return {
            print("I'm going to \($0)")
            counter += 1
            print("counter = \(counter)")
        }
    }
    
}
