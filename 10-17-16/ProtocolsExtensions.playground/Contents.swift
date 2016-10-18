//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Flier
{
	var flapsPerMinute : Int { get set }
	
	func fly()
}

struct Pigeon: Flier
{
	var flapsPerMinute: Int = 600

	func fly()
	{
		print("flap flap flap")
	}
}

struct Hawk: Flier
{
	var flapsPerMinute: Int = 50
	
	func fly()
	{
		print("soar")
	}
}

// cant instantiate a protocol
//let f = Flier()

func makeThingFly(f: Flier)
{
	f.fly()
}

let aHawk = Hawk()
let aPigeon = Pigeon()

makeThingFly(f: aHawk)
makeThingFly(f: aPigeon)

protocol Drawable
{
	func draw() -> UIView
}

struct Square: Drawable
{
	var size: Int
	var color: UIColor
	
	func draw() -> UIView
	{
		// dont study this
		let view = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))
		view.backgroundColor = color
		
		return view
	}
}

struct Circle: Drawable
{
	var size: Int
	var color: UIColor
	
	func draw() -> UIView
	{
		// dont study this
		let view = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))
		view.backgroundColor = color
		view.layer.cornerRadius = CGFloat(size/2)
		
		return view
	}
}

let cir : Drawable = Circle(size: 100, color: UIColor.red)
let circleView = cir.draw()

let sq : Drawable = Square(size: 100, color: UIColor.blue)
let squareView = sq.draw()

extension String
{
	subscript(idx: Int) -> Character
	{
		let c = Array(self.characters)[idx]
		return c
	}
	
	func doSomething() {}
}

var test = str[1]
str.doSomething()

extension UIView
{
	class func SnakeEye(size: Int) -> UIView
	{
		// dont study this implementation
		
		let containerView = UIView(frame: CGRect(x: 0, y: 0, width: size, height: size))
		containerView.layer.cornerRadius = 10
		containerView.backgroundColor = UIColor.gray
		
		let dotSize = size/5
		let dotView = UIView(frame: CGRect(x: (size/2) - (dotSize/2), y: (size/2) - (dotSize/2), width: dotSize, height: dotSize))
		dotView.layer.cornerRadius = CGFloat(dotSize/2)
		dotView.backgroundColor = UIColor.black
		
		containerView.addSubview(dotView)
		
		return containerView
	}
}

let v = UIView.SnakeEye(size: 100)


let v2 = UIView.SnakeEye(size: 100)









