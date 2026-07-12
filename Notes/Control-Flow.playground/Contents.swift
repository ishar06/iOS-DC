import UIKit

let temperature = 70
if temperature >= 65 && temperature <= 75{
    print("The temperature is just right.")
}else if temperature < 65 {
    print("It's too cold.")
}else{
    print("It's too hot.")
}

var isPluggedIn = false
var hasBatteryPower = true
if isPluggedIn || hasBatteryPower {
    print("You can use your laptop.")
}else{
    print("You can't use your laptop.")
}


let numberOfWheels = 2
switch numberOfWheels{
case 0:
    print("Missing Something.")
case 1:
    print("Unicycle")
case 2:
    print("Bicycle")
case 3:
    print("Tricycle")
case 4:
    print("Quadcycle")
default:
    print("That's a lot of wheels!")
}

let character = "z"
switch character {
case "a", "e", "i", "o", "u":
    print("Character is a vowel.")
default:
    print("Character is a consonant.")
}

let distance = 50
switch distance {
case 0...9:
    print("Your destination is close.")
case 10...99:
    print("Your destination is a medium distance frome here.")
case 100...999:
    print("Your destination is far from here.")
default:
    print("Distance can't be determined.")
}

var temp = 76
switch temp{
case Int.min...64:
    print("It's too cold.")
case 65...75:
    print("The temperature is just right")
default:
    print("It's too hot.")
}

// Ternary Operator
var largest:Int
let a = 15
let b = 4
largest = (a > b) ? a : b
print(largest)
