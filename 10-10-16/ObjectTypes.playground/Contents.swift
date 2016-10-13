//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Dog
{
	var name : String
	var age : Int
	
	// Initializer
	init(name: String, age: Int)
	{
		self.name = name
		self.age = age
	}
}

let d = Dog(name: "Fido", age: 3)

class Cat
{
	var name : String
	var age : Int
	
	// Failable Initializer
	init?(name: String, age: Int)
	{
		if age > 100
		{
			return nil
		}
		else
		{
			self.name = name
			self.age = age
		}
	}
}

let c = Cat(name: "Snoozy", age: 3)

let deadCat = Cat(name: "Nitten", age: 102)

if let aCat = deadCat
{
	print(aCat.name)
}

class Digit
{
	var num: Int
	
	init(number: Int)
	{
		self.num = number
	}
	
	// Subscripts
	subscript(idx: Int) -> Int
	{
		// Dont study
		
		let numString = String(num)
		let numChar = Array(numString.characters)[idx]
		return Int(String(numChar))!
	}
}

let aDigit = Digit(number: 23444)
print(aDigit[2])

enum WeekDay
{
	case monday
	case tuesday
	case wednesday
	case thursday
	case friday
	case saturday
	case sunday
}

var day: WeekDay
day = WeekDay.monday
day = .tuesday

switch (day)
{
case .monday:
	print("It's monday")
case WeekDay.tuesday:
	print("its tuesday")
default:
	print("It's another day")
}


let day2 = WeekDay.monday

func doSomething(aDay: WeekDay) {}

doSomething(aDay: .thursday)

enum MediaType: String
{
	case image = "image/jpeg"
	case video = "video/mp4"
	case audio = "audio/mp3"
}

var mediaTypeString = "video/mp4"

var type = MediaType(rawValue: mediaTypeString)
print(type!.rawValue)

var type2 = MediaType(rawValue: "test")

class Week
{
	private var days : [WeekDay] = [
		.monday,
		.tuesday,
		.wednesday,
		.thursday,
		.friday,
		.saturday,
		.sunday
	]
	
	subscript(idx: Int) -> WeekDay
	{
		return self.days[idx]
	}
}

let myWeek = Week()
print(myWeek[2])

struct Horse
{
	var name : String
	var age : Int
}

// Reference types (classes)
let cat = Cat(name: "Jerry", age: 4)!
let cat2 = cat

cat2.name = "blah"

cat
cat2

// Value types (structs)
let horse = Horse(name: "Corey", age: 2)
var horse2 = horse
horse2.name = "John"

horse

horse2

struct AppConstants
{
	static let APP_NAME = "My Application"
	static let DB_NAME = "myapplication.sqlite"
}

print("Welcome to \(AppConstants.APP_NAME)")

class Quadruped
{
	static let NUM_LEGS = 4
	
	var name: String
	var age: Int

	init(name: String, age: Int)
	{
		self.name = name
		self.age = age
	}
	
	convenience init(name : String)
	{
		self.init(name: name, age: 0)
	}
	
	func walk()
	{
		print("Walk walk walk")
	}
}

// Inheritance
class Lion: Quadruped
{
	func roar()
	{
		print("Roar")
	}
}

class Iguana: Quadruped
{
	override init(name: String, age: Int)
	{
		print("Making an iguana")
		super.init(name: name, age: age)
	}
	
	override func walk()
	{
		super.walk()
		print("Waddle waddle waddle")
	}
	
	func regenerateTail()
	{
		print("I'm regenerating")
	}
}

var q = Quadruped(name: "animal", age: 2)

let aLion = Lion(name: "Leo", age: 3)
aLion.walk()

let godzilla = Iguana(name: "Godzilla", age: 1)
godzilla.walk()

func doSomething(quad: Quadruped)
{
	quad.walk()
	
	if let lion = quad as? Lion
	{
		lion.roar()
	}
	else if let ig = quad as? Iguana
	{
		ig.regenerateTail()
	}
}

print("\n-----\n")

doSomething(quad: q)
doSomething(quad: aLion)
doSomething(quad: godzilla)









