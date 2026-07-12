import UIKit


func displayPi(){
    print("3.1415926535")
}


func triple(value: Int){
    print(value * 3)
}
triple(value: 10)


// Multiple Parameters
func add(a:Int, b: Int) -> Int{
    return a + b
}
print(add(a: 3, b: 5))


// return keyword
func multiply(a: Int, b: Int) -> Int{
    a * b
}
print(multiply(a: 4, b: 6))


// Omitting Parameter Labels and Passing a Default Parameter
func add(_ a: Int, b: Int, c: Int = 0) -> Int{
    return a + b + c
}
print(add(1, b:2, c: 1))
print(add(1, b:2))



