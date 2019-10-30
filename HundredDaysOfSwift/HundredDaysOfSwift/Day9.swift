//
//  Day9.swift
//  HundredDaysOfSwift
//
//  Created by Mark Angelo Diesta on 10/28/19.
//  Copyright © 2019 Mark Angelo Diesta. All rights reserved.
//

import Foundation

class Day9 {
    
    struct User {
        var username: String
        var password: String
        
        init() {
            username = "Anonymous"
            password = "Pass"
            print("Creating a new user!")
        }
        
        init(name: String, pass: String) {
            username = name;
            password = pass
        }
    }
    
    struct Person {
        var name: String
        lazy var familyTree = FamilyTree()
        private var id: String
        
        init(name: String, id: String) {
            print("\(name) was born!")
            self.name = name
            self.id = id
        }
        
        func identify() -> String {
            return "My social number is \(id)"
        }
    }
    
    struct FamilyTree {
        init() {
            print("Creating family tree!")
        }
    }
    
    struct Student {
        static var classSize = 0
        var name: String
        
        init(name: String) {
            self.name = name
            Student.classSize += 1
        }
    }
    
    func showDay9() {
        showInitializer()
        showReferringCurrentInstance()
        showLazyPropeties()
        showStaticPropetiesAndMethod()
        showAccessControl()
    }
    
    func showInitializer() {
        print("----- showInitializer -----")
        
        var user = User()
        print(user.username)
        user.username = "Mark"
        print(user.username)
    }
    
    func showReferringCurrentInstance() {
        print("----- showReferringCurrentInstance -----")
        
        let person = Person(name: "Mark", id: "123")
        print(person.name)
    }
    
    func showLazyPropeties() {
        print("----- showLazyPropeties -----")
        var ed = Person(name: "Ed", id: "456")
        
        print(ed.familyTree)
    }
    
    func showStaticPropetiesAndMethod() {
        print("----- showStaticPropetiesAndMethod -----")
        let _ = Student(name: "Ed")
        let _ = Student(name: "Taylor")
        
        print(Student.classSize)
    }
    
    func showAccessControl() {
        print("----- showAccessControl -----")
        let person = Person(name: "Mark", id: "123")
        print(person.identify())
    }
}
