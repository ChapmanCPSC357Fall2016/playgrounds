//: Playground - noun: a place where people can play

import UIKit

extension Int
{
	// as a function
	func numberOfDigits() -> Int
	{
		let stringRep = String(self)
		return stringRep.characters.count
	}
	
	// as a computed variable
	var numberOfDigits2: Int {
		
		let stringRep = String(self)
		return stringRep.characters.count
	}
}

let x = 353464
print(x.numberOfDigits())
print(x.numberOfDigits2)

protocol Shape
{
	var area : Double { get }
	
	func draw(color: UIColor) -> UIView
}

struct Circle: Shape
{
	var radius: Double
	
	var area: Double {
		
		return M_PI * pow(self.radius, 2)
	}
	
	func draw(color: UIColor) -> UIView {
		
		return UIView() // eh
	}
	
}


