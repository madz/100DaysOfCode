//
//  Day6.swift
//  HundredDaysOfSwift
//
//  Created by Mark Angelo Diesta on 10/24/19.
//  Copyright © 2019 Mark Angelo Diesta. All rights reserved.
//

import Foundation

class Day6 {
    
    func showDay6() {
        showBasicClosure()
        showAcceptParameterInClosure()
        showReturnValueFromClosure()
        showClosureAsParameter()
        showTralingClosureSyntax()
    }
    
    func showBasicClosure() {
        print("----showBasicClosure----")
        //Creating basic closusres
        let driving = {
            print("I'm driving in my car")
        }
        driving()
    }
    
    func showAcceptParameterInClosure() {
        print("----showAcceptParameterInClosure----")
        //Accepting parameters in closure
        let driving1 = { (place: String) in
            print("I'm going to \(place) in my car")
        }
        driving1("Manila")
    }
    
    func showReturnValueFromClosure() {
        print("----showReturnValueFromClosure----")
        //Returning values from a closure
        let drivingWithReturn = { (place: String) -> String in
            return "I'm goin to \(place) in my car"
        }
        let message = drivingWithReturn("Cebu")
        print(message)
    }
    
    func showClosureAsParameter() {
        print("----showClosureAsParameter----")
        //Closure as parameters
        let driving = {
            print("I'm driving in my car")
        }
        
        func travel(action: () -> Void) {
            print("I'm getting ready to go.")
            action()
            print("I arrived")
        }
        
        travel(action: driving)
    }
    
    func showTralingClosureSyntax() {
        print("----showTralingClosureSyntax----")
        //Trailing Closure Syntax
        func goOnvacation(to destination: String, _ activities: () -> Void) {
            print("Packing bags...")
            print("Getting on place tp \(destination)...")
            activities()
            print("time to go home")
        }
        goOnvacation(to: "Mexico") {
            print("Go sightseeing")
            print("Relax in sun")
            print("Go hiking")
        }
    }
    
}
