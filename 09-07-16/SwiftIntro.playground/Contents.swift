//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Creating variables
var number = 6
let z = number + 9

// Explicitly typing
let y : Int = 8

// Cant reassign let variable
//z = 7

print(z)

number.dynamicType

number.successor()

// Extensions (dont study)
extension Int {
    
    func plusFive() -> Int {
        
        return self + 5
    }
    
}

let test2 = number.plusFive()

// Class types (Don't study yet)
class Dog {
    
    let name = "Fido"
    
    func bark() {
        
        print("woof")
        
    }
}

let aDog = Dog()
aDog.bark()

// Functions

func doSomething() {
    
    print("I'm doing something")
    
}

doSomething()

// Don't study
func addFive(x : Int) -> Int {
    
    return x + 5
}

addFive(6)

// Objective-C-Like sentence
func add(x: Int, to y : Int) -> Int {
    
    return x + y
    
}

add(6, to: 7)

class Human {
    
    class Human {
        class Human {
            
            var test = "Hello"
            
            class func DoAThing() {
                
                print("Hello")
            }
            func doSomething() {
                
                class Human {
                    
                    func doSomethingElse() {
                        
                        // Can't access this. Out of scope
                        //print(pizza)
                        
                        if true {
                            
                            print("test")
                            let pizza = 7
                            
                            class Human {
                                
                            }
                        }
                    }
                }
            }
        }
    }
}

Human.Human.Human.DoAThing()

class Cat {
    
    var name : String
    
    // Ignore this for now
    init(name : String) {
        
        self.name = name
    }
    
    func meow() {
        
        print("Meow my name is \(self.name)")
    }
}

let aCat = Cat(name: "Pancake")
aCat.meow()

// Ignore this
let box = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
box.backgroundColor = UIColor.redColor()

box.layer.cornerRadius = 20

box














