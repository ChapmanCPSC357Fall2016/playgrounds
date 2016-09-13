//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = str.stringByReplacingOccurrencesOfString(",", withString: ".")

// External parameters

func multiply(x : Int, by y : Int) -> Int {
    return x * y
}

multiply(6, by: 7)

func getName(first: String, last: String) -> String {
    
    return "\(first) \(last)"
}

let name = getName("Ryan", last: "Burns")

// Without external
func add(x : Int, _ y : Int) -> Int {
    
    return x + y
}

// With external name (label)
func add(x: Int, to y : Int) -> Int {
    
    return x + y
}

add(6, to: 7)

let test = add(6, 7)

// Ignored variable name
let _ = 5

// Default parameters
func say(word :String, prefix: String = "", suffix : String = "") {
    
    print("\(prefix)\(word)\(suffix)")
}

say("hello")
say("hello", prefix: "shm")
say("hello", prefix: "shm", suffix: "ahhh")
say("hello", suffix: "ahhh")

// Variadic params
print("hello")
print(true)
print(4)

print("hello", "my", "name", "is")
print(true, "helo", 666, 6.5, [3,4,5])

func sayWords(words : String...) {
    
    for word in words {
        
        print(word)
    }
}

sayWords("Hello", "I'm", "Ryan")

// Not a real type
// let x : String... = "hello", "mu"

func remove(target: String, inout fromString s : String) -> Bool {
    
    let newString = s.stringByReplacingOccurrencesOfString(target, withString: "")
    
    let changed = (s != newString)
    
    // inout param
    s = newString
    
    return changed
}

var phrase = "hello world"
let removed = remove("x", fromString: &phrase)

phrase

let removed2 = remove("l", fromString: &phrase)

phrase

// Invoking functions with anonymous functions as params
UIView.animateWithDuration(2.0, animations: { 
    
    // animation code here
    
    }) { (animationWorked) in
        
        // completion code here
}




