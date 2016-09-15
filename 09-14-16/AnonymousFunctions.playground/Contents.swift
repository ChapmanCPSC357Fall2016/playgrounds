//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

extension String {
    
    mutating func remove(target: String, onError: (String) -> Void, onSuccess: () -> Void) {
        
        let newString = self.replacingOccurrences(of: target, with: "")
        
        let changed = (self != newString)
        
        self = newString
        
        if changed {
            
            onSuccess()
        }
        else {
            
            onError("The word didnt change")
        }
        
    }
    
}

// Anonymous functions
var errorHandler = { (errorMsg : String) -> Void in

    print(errorMsg)
    
}

var successHandler = { () -> Void in
    
    print("Done!")
    
}

str.remove(target: "x", onError: errorHandler, onSuccess: successHandler)
str.remove(target: "l", onError: errorHandler, onSuccess: successHandler)

// Invoking with auto-complete anonymous functions
// Don't study this syntax
str.remove(target: "x", onError: { (msg) in
    
    print(msg)
    
    }) {
        
        print("Done!")
}

str.remove(target: "e", onError: { (msg) in
    
    print("Something happened: \(msg)")
    
    }) { 
        
        print("It worked")
}

// Animation anonymous function example

// Don't memorize making views
let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
containerView.backgroundColor = UIColor.red
let innerView = UIView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
innerView.backgroundColor = UIColor.blue

containerView.addSubview(innerView)

UIView.animate(withDuration: 1.0, animations: { 
    
    innerView.frame.size.width = 20
    innerView.backgroundColor = UIColor.purple
    
    }) { (success) in
        
        UIView.animate(withDuration: 1.0, animations: {
            
            innerView.frame.size.height = 20
            innerView.backgroundColor = UIColor.yellow
            
        }) { (success) in
            
            UIView.animate(withDuration: 1.0, animations: {
                
                innerView.frame.size.width = 200
                innerView.backgroundColor = UIColor.green
                
            }) { (success) in
                
                UIView.animate(withDuration: 1.0, animations: {
                    
                    innerView.frame.size.height = 200
                    innerView.backgroundColor = UIColor.blue
                    
                }) { (success) in
                    
                    print("DONE!")
                }
            }
        }
}

// Ignore this. This gets animations to work
PlaygroundPage.current.liveView = containerView



















