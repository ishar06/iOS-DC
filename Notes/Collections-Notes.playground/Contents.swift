import UIKit

/*
 ARRAYS
 var <array_name>: [<data_type>] = [value1, value2, ...]
 
 var myArray: [Int] = []
 var myArray: Array<Int> = []
 var myArray = [Int]()
 
 .contains()
 .count
 .isEmpty
 .append() --> arr += [value1, value2, ...]
 .insert(value, at: index)
 .insert(contentsOf: [value1, value2, ...], at: index)
 .remove(at: index)
 .removeLast()
 */


var numbers = [1, 2, 3, 4, 5] // Simple Int type

var nums: [Int8] = [1, -3, 50, 72, -95, 115] // Int8 type

if numbers.contains(5){
    print("5 is present inside numbers.")
}

var arr1 = [Int](repeating: 22, count: 3)

var arr = [3, 6, 9, 12, 15]
print("Array:", arr)
print("Count of Array:", arr.count)
print("2nd Element:", arr[1])

arr.append(18)
print(arr)

arr += [21, 24]
print(arr)

arr[1] = 30
print(arr)

arr.insert(10, at: 0)
print(arr)

arr.insert(contentsOf: [1, 2], at: 1)
print(arr)

var names = ["Amy", "Lou", "Chelsea", "Dan"]
let chelsea = names.remove(at: 2, )
let last = arr.removeLast()
print(names)


let array1 = [1, 2, 3]
let array2 = [4, 5, 6]
let containerArray = [array1, array2]
let firstArray = containerArray[0]
let firstElement = containerArray[0][0]

print(containerArray)
print(firstArray)
print(firstElement)


let tic = [[0, 1, 0], [1, 0 ,1], [1, 1, 0]]
print(tic[1][1])

print("\n--------------------------------------\n")

/*
 DICTIONARIES
 
 var myDictionary = [String: Int] = [:]
 var myDictionary = Dictionary<String, Int>()
 var myDictionary = [String: Int]()
 
 
 dict[key] = value
 .updateValue(value, forkey: )
 .removeValue(forKey: )
 dict[key] = nil --> removes key-value pair
 
 */


var dict: [String: Int] = [:]

dict = [
    "Ajay": 500,
    "Jasleen": 200,
    "Pranjal": 850
]

dict["Suraj"] = 450
dict["Jasleen"] = 650

dict.updateValue(560, forKey: "Ajay")
dict.removeValue(forKey: "Suraj")

dict["Ajay"] = nil

print(dict)



var scores = [
    "Richard": 500,
    "Luke": 400,
    "Cheryl": 800
]

let players = Array(scores.keys)
let points = Array(scores.values)



