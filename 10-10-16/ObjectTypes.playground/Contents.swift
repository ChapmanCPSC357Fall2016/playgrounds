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
		let index = numString.index(numString.startIndex, offsetBy: idx)
		
		let numChar = numString[index]
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





