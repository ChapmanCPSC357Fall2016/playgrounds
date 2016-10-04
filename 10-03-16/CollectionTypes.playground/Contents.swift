//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var strList : [String]? = ["Hello", "hi"]

let test = strList?.append("World")

strList = nil

let test2 = strList?.append("World")

var words = ["Hello", "World"]

// Indexing
print(words[1])
words[0] = "test"

var evens = [2,4,6,8]

// Slicing
let r = 0..<3
print(evens[r])
print(evens[0...2])

let b = evens.contains(1)

struct Dog
{
	var name: String
	var age: Int
}

var dogArray: [Dog] = []
dogArray.append(Dog(name: "Cali", age: 3))
dogArray.append(Dog(name: "Thor", age: 18))
dogArray.append(Dog(name: "Sonny", age: 1))
dogArray.append(Dog(name: "Sandy", age: 4))
dogArray.append(Dog(name: "Dot", age: 13))

// Using computed initializer
let oldDog1 : Bool = {
	
	for d in dogArray
	{
		if d.age > 10
		{
			return true
		}
	}
	return false
}()

// Using enumeration
let oldDog2 = dogArray.contains { (d : Dog) -> Bool in
	
	return d.age > 10
}

let countOldDogs1 : Int = {
	
	var count = 0
	
	for d in dogArray
	{
		if d.age > 10
		{
			count += 1
		}
	}
	
	return count
}()

let countOldDogs2 : Int = {
	
	
	var count = 0
	
	dogArray.forEach({ (d : Dog) in
		
		if d.age > 10
		{
			count += 1
		}
	})
	
	return count
}()

let oldDogs = dogArray.filter { (d: Dog) -> Bool in
	
	return d.age > 10
}

print(oldDogs)

let dogAges = dogArray.map { (d: Dog) -> Int in
	
	return d.age
}
print(dogAges)

dogArray.sort { (d1: Dog, d2: Dog) -> Bool in
	
	return d1.age < d2.age
}

print(dogArray)

// Dictionaries
var stateCodes : [String:String] = ["CA":"California", "NE":"Nebraska", "AZ":"Arizona","NV":"Nevada"]

// Retrieval
let cali = stateCodes["CA"]
type(of: cali)

stateCodes["WA"] = "Washington"
print(stateCodes)

let hawaii = stateCodes["HI"]








