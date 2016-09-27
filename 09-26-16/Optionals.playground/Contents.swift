//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// cant do this
//str = nil

var str2 : String = "Hello playground"

var str3 : String? = "Hello playground"

str3 = nil
str3 = "Hello Playground"

type(of: str2)
type(of: str3)

// This will never ever crash (because str2 is not optional)
let x = str2.replacingOccurrences(of: "e", with: "x")

var y = str3!.replacingOccurrences(of: "e", with: "x")

let str3Copy = str3!

str3 = nil

// this will crash with a "Null pointer"
//let str3Copy2 = str3!
//y = str3!.replacingOccurrences(of: "x", with: "t")

var str4 : String! = "Hello Playground"

var z = str4.replacingOccurrences(of: "x", with: "e")

str4 = nil

// This below is not a compile error, but a "nilpointer error"
//z = str4.replacingOccurrences(of: "t", with: "j")

str4 = "hello"

str4.replacingOccurrences(of: "e", with: "k")




