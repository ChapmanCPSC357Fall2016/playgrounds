//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Simple conditional
if str == "test"
{
	print("Hello")
}
else if str == "test2"
{
	print("Hi")
}
else
{
	
}

var num = 3

switch num
{
case 1:
	print("Num was 1")
case 2:
	print("Num was 2")
case 3:
	print("Num was 3")
	fallthrough // if we purposely want to fall through to the next case
default:
	print("uh:")
}

// Ternary expression
num = -5
let description = (num < 0) ? "negative" : "nonnegative"

// Simple while loop
var counter = 0

while counter < 5
{
	print(counter)
	counter += 1
}

print("separator")

var nums = [1,4,5,7,8,6,5,32]

// Conditional Binding again (with loops)
while let aNum = nums.popLast() , aNum % 2 == 0
{
	print(aNum)
}

for i in 0 ..< 5
{
	print(i)
}

print("separator")

nums = [1,5,6,443,7,4,2,23,44,5]

for n in nums where n % 2 == 0
{
	print(n)
}

struct Dog
{
	var name : String
	var age : Int
}

var dogs = [Dog]()
dogs.append(Dog(name: "Cali", age: 3))
dogs.append(Dog(name: "sonny", age: 12))

for d in dogs where d.age > 10
{
	print(d.name)
}


// Loop labels with break
outer: while true
{
	let randomNum = arc4random_uniform(1000)
	print(randomNum)
	
	let randomNumString = String(randomNum)
	
	inner: for c in randomNumString.characters
	{
		if c == "0"
		{
			break outer
		}
	}
}
