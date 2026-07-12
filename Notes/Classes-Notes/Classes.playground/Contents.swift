import UIKit

class Person{
    let name: String
    
    init(name: String){
        self.name = name
    }
    
    func sayHello(){
        print("Hello there!")
    }
}

let person = Person(name: "Ishar")
print(person.name)
person.sayHello()



class Vehicle{
    var currentSpeed: Double = 0.0
    var description: String{
        return "Travelling at \(currentSpeed) miles per hour."
    }
    
    func makeNoise(){
        
    }
}
var vehicle = Vehicle()
print(vehicle.description)


class Bicycle: Vehicle{
    var hasBasket: Bool = false
    
}
var bicycle = Bicycle()
print(bicycle.currentSpeed)
print(bicycle.hasBasket)



class Tandem: Bicycle{
    var noOfPassengers: Int = 0
    
    override func makeNoise() {
        print("Bicycle Noise...")
    }
}


class Train: Vehicle{
    override func makeNoise() {
        print("Choo choo !")
    }
}
var train = Train()
train.makeNoise()



class Car: Vehicle{
    override init(){
        super.init()
    }
    override var description: String{
        return "Car is travelling at speed \(currentSpeed)"
    }
}
var car = Car()
print(car.description)


