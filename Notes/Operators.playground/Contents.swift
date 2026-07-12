import UIKit

// = operator is used to modify or reassign a value
var shoeSize = 6
shoeSize = 7

// +, -, *, /
var opponentScore = 3 * 8
opponentScore -= 1
var myScore = 100 / 5
var totalScore = myScore + opponentScore


// Use Double values for Decimal point precision
let totalDistance = 3.9
var distanceTraveled = 1.2
var remainingDistance = totalDistance - distanceTraveled
print(remainingDistance)

// Precision Trade-Off b/w Integer and Double
let firstNumber = 10
let secondNumber = 3
let solution = firstNumber / secondNumber
print(solution)

var x: Double = 10
var y: Double = 3
var z: Double = x / y
print(z)

// Compound Assignment
var score = 10
score += 3
score -= 5
score *= 2
score /= 2
print(score)

/*
 Order of Operations
 1. ()
 2. * /
 3. + -
 */

x = 2
y = 3
z = 5
print(x + y * z)
print((x + y) * z)

// Numeric Type Conversion
var a = 3
var b = 0.1415927
var pi = Double(a) + b
print(pi)
