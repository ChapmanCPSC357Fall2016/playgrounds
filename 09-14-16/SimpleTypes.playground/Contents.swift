//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var num = 12

var isEven : Bool

if num % 2 == 0 {
    isEven = true
}
else {
    isEven = false
}

// Computed initializer way (define & call)
let isOdd : Bool = {
    
    if num % 2 == 1 {
        return true
    }
    else {
        return false
    }
}()

// Computed variables
private var _hiddenString : String = "hello"

var hiddenString : String {

    get {
    
        // Code that runs when variable is accessed
        print("Someone is accessign this")
        return _hiddenString
    }

    set {
        print("User is trying to set variable to \(newValue)")
        _hiddenString = newValue
    }
}

let x = hiddenString
hiddenString = "a new string"

class Dog {

    private var nameChanges = 0
    private var _name : String = ""
    private var _color : UIColor = UIColor.black
    
    var name : String {
        
        get {
            return _name
        }
        
        set {
            
            if nameChanges < 3 {
                _name = newValue
                nameChanges += 1
            }
            else {
                print("You cant do that anymore")
            }
        }
    }
    
    var color : UIColor {
        
        // By default, just a get (read only)
        return _color
    }
    
}

let d = Dog()

d.name = "fido"

// Cant set color
//d.color = UIColor.red
print(d.name)
print(d.color)

d.name = "sonny"
d.name = "rover"

d.name = "corey"








