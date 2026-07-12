import UIKit

// INITIALIZERS
var string = String.init() // ""
var integer = Int.init() // 0
var bool = Bool.init() // false

string = String() // ""
integer = Int() // 0
bool = Bool() // false


struct Odometer{
    var count: Int = 0
    init(count: Int){
        self.count = count
    }
}
let ode = Odometer(count: 10)


// Memberwise Initializers
struct Person{
    var name: String
    init(name: String){
        self.name = name
    }
}


// Custom Initializers
struct Temperature{
    var celsius: Double
    
    init(celsius: Double = 0){
        self.celsius = celsius
    }
    
    init(farhenheit: Double){
        self.celsius = (farhenheit - 32) * 5/9
    }
}

let tempInF = Temperature(farhenheit: 98.6)
print(tempInF)

let tempInC = Temperature(celsius: 25)
print(tempInC)

