import UIKit

let greeting = "Hello!"

var newText = """
Hello, World!
Multiline Text
"""
print(newText)


var greet = "Hello, \"Ishar\" \t How are you?"
print(greet)


var myString = ""
if myString.isEmpty {
    print("String is Empty!")
}


var char: Character = "a"
print(type(of: char))


let str1 = "Hello"
let str2 = "World"
var str = str1 + " " + str2
str += " Hello"
print(str)


// INTERPOLATION
var name = "Sophie"
let age = 30
print("\(name) is \(age) years old.")


let a = 5
let b = 10
print("If a is \(a) and b is \(b), then a + b equals \(a+b)")


let city = "delhi"
let capitalCity = "Delhi"
if city == capitalCity{
    print("Both cities are same.")
}else{
    print("Both cities are not same.")
}


if city.lowercased() == capitalCity.lowercased(){
    print("Both cities are same.")
}else{
    print("Both cities are not same.")
}


greet = "Hello, world!"
print(greet.hasPrefix("Hello"))
print(greet.hasSuffix("world!"))
print(greet.hasSuffix("World!"))


greet = "Hi Sophie, my name is Amy."
if greet.contains("my name is"){
    print("Making an introduction")
}


let password = "12345"
if password.count < 8{
    print("Too Short! Password must contain at least 8 characters.")
}
switch password.count{
case 0:
    print("Invalid String.")
case 1...10:
    print("String is small.")
default:
    print(password)
}

greet = "Hello world"
print(greet[greet.startIndex])
print("\(greet) is \(greet.replacingOccurrences(of: "world", with: "Anu"))")

// print(greet[greet.endIndex])

