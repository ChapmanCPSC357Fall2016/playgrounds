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
var isOdd : Bool = {
    
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
    
    // Read-only computed variable
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

class Horse
{
    private var _color : UIColor = UIColor.black
    
    var color : UIColor {
        
        //Read-only property
        return _color
    }
    
    var age : Int = 0 {
        
        // Setter observers
        
        willSet {
            print("About to set age from \(self.age) to \(newValue)")
        }
        
        didSet {
            print("Finally set age from \(oldValue) to \(self.age)")
            
            if age == 0
            {
                _color = UIColor.black
            }
            else
            {
                let newAlpha = 1.0 / Double(age)
                _color = UIColor.black.withAlphaComponent(CGFloat(newAlpha))
            }
        }
    }
}

let h = Horse()
h.color
//h.color = UIColor.red
h.age = 2
h.color

h.age = 10
h.color

// String characters
for c in str.characters
{
    print(c)
}

var r = 0...10

type(of: r)

for i in 0...9
{
    print(i)
}

for j in r
{
    print(j)
}

var number = 9

let exists = (0...5).contains(number)

var z : Int
var y : Int

(z, y) = (1, 2)

z
y

var tup = (1,5,6,2)

tup.0
tup.3

var california = (name : "California", code: "CA")

california.1
california.code


// Named tuples
func remove(target: Character, fromString : String) -> (numRemoved : Int, newString : String)
{
    
    var removed = 0
    var newPhrase = ""
    
    for c in fromString.characters
    {
        if c == target
        {
            removed += 1
        }
        else
        {
            newPhrase.append(c)
        }
    }
    
    return (removed, newPhrase)
}

let something = remove(target: "l", fromString: str)
something.numRemoved
something.newString

let states = ["CA", "NE", "AZ"]

for state in states
{
    print(state)
}

// Tuple enumerations
for (index, element) in states.enumerated()
{
    print("\(index): \(element)")
}




























