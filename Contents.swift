//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// in macOS, Int is a 64-bit integer.  In iOS Int is 32-bit in earlier devices and 64-bit in later devices
print("The maximum Int value is \(Int.max).")
print("The minimum Int value is \(Int.min).")
print("The maximum Int value for a 32-bit integer is \(Int32.max).")
print("The minimum Int value for a 32-bit integer is \(Int32.min).")
// also available are Int8, Int16, Int64
// good Swift style is to use Int for most cases
// Unsigned integer types represent whole numbers greater than or equal to 0
print("The maximum UInt value is \(UInt.max).")
print("The minimum UInt value is \(UInt.min).")
print("The maximum UInt value for a 32-bit unsigned integer is \(UInt32.max).")
print("The minimum UInt value for a 32-bit unsigned integer is \(UInt32.min).")

let numberOfPages: Int = 10
let numberOfChapters = 3
let numberOfPeople: UInt = 40
let volumeAdjustment: Int32 = -1000

// compiler will alert you that this is not possible because the value "overflows when stored into" the particular type
// let firstBadValue: UInt = -1
// let secondBadValue: UInt8 = 200

print(10+20)
print(30-5)
print(5*6)

// swift follows math order of operations
print(10 + 2 * 5)
print(30 - 5 - 5)

// but better to use parentheses
print((10 + 2) * 5)
print(30 - (5 - 5))

// integer division - result of any operation between two integers is always another integer of same type; swift truncates the fractional part.  Integer division always rounds toward 0.
print(11 / 3)
print(11 % 3)
print(-11 % 3)

var x = 10
x += 10
print("x has had 10 added to it and is now \(x)")
x -= 5
print ("x has had 5 subtracted from it and is now \(x)")

//overflow operators
let y: Int8 = 120
// the next line causes an error because the # is 130 and Int8 goes from -128 to 127.
// let z = y + 10
// fix it by adding an overflow operator:
let z = y &+ 10
// this is weird, but it basically wraps around the upper or lower limit (whatever is applicable in that situation)

// converting between integer types
let a: Int16 = 200
let b: Int8 = 50
// swift does not automatically convert types to match
// let c = a + b
// fix by doing a manual conversion
let c = a + Int16(b)

// floating-point numbers
// Float vs Double - Double has more precision than Float.  Double is Swift's default inferred type for floating-point numbers
let d1 = 1.1 // implicitly Double
let d2: Double = 1.1
let f1: Float = 100.3

print(10.0 + 11.4)
print(11.0 + 3.0)

if d1 == d2 {
    print("d1 and d2 are the same!")
}
// comparing two floating-point numbers
print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2")
}
// many numbers can't be represented exactly in floating-point number which is why the statement did not print.  the numbers are not technically equal despite Swift rounding them both to 1.2 and them appearing to be equal.  
// be aware of potential pitfalls of using floating-point numbers
// don't use floating-point numbers if values that must be exact (like calculations dealing with money)



















