//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct NumberError: Error
{
	var localizedDescription: String = "There was an even number"
}

func errorIfEven(num: Int) throws -> Int
{
	if num % 2 == 0
	{
		throw NumberError()
	}
	
	return num
}

do
{
	let result = try errorIfEven(num: 4)
}
catch let err as NumberError
{
	print("An error was thrown: \(err.localizedDescription)")
}
catch let err2
{
	print("Some other error happened")
}

let test1 = try! errorIfEven(num: 5)
//let test2 = try! errorIfEven(num: 2)


let test3 = try? errorIfEven(num: 5)
let test4 = try? errorIfEven(num: 8)

if let x = try? errorIfEven(num: 6)
{
	print("Do something with value \(x)")
}
else
{
	print("X must have been even")
}

enum VendingMachineError: Error
{
	case outOfStock
	case invalidSelection
	case insufficientFunds
}

class Item
{
	var name: String
	var cost: Int
	var count: Int
	
	init(name: String, cost: Int, count: Int)
	{
		self.name = name
		self.cost = cost
		self.count = count
	}
}

class VendingMachine
{
	private var items: [String:Item] = [
		"A1": Item(name: "Candybar", cost: 4, count: 2),
		"B5": Item(name: "Granolabar", cost: 2, count: 1),
		"B7": Item(name: "Chips", cost: 1, count: 3)
	]
	
	private var coinsDeposited = 0
	
	func addCoin()
	{
		coinsDeposited += 1
	}
	
	func vend(code: String) throws
	{
		guard let vendItem = items[code] else {
			throw VendingMachineError.invalidSelection
		}
		
		guard vendItem.count > 0 else {
			throw VendingMachineError.outOfStock
		}
		
		guard vendItem.cost <= coinsDeposited else {
			throw VendingMachineError.insufficientFunds
		}
		
		vendItem.count -= 1
		coinsDeposited = coinsDeposited-vendItem.cost
		print("You got a \(vendItem.name)")
	}
}

func tryVend(code: String, machine: VendingMachine)
{
	do
	{
		try machine.vend(code: code)
		print("Worked!")
	}
	catch let e
	{
		print(e)
	}
}

let machine = VendingMachine()

machine.addCoin()
machine.addCoin()
machine.addCoin()
machine.addCoin()

tryVend(code: "A1", machine: machine)
tryVend(code: "A1", machine: machine)
tryVend(code: "D3", machine: machine)

machine.addCoin()
machine.addCoin()
machine.addCoin()
machine.addCoin()

tryVend(code: "A1", machine: machine)
tryVend(code: "A1", machine: machine)








