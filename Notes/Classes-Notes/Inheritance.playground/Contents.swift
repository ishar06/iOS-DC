import UIKit

class Vehicle{
    var currentSpeed: Double = 0.0
    var description: String{
        return "Travelling at \(currentSpeed) miles per hour."
    }
    
    func makeNoise(){
        
    }
}


class Bicycle: Vehicle{
    var hasBasket: Bool = false
    
    init(hasBasket: Bool){
        self.hasBasket = hasBasket
    }
}


class Tandem: Bicycle{
    var noOfPassengers: Int
    
    init(noOfPassengers: Int) {
        self.noOfPassengers = noOfPassengers
        super.init(hasBasket: false)
    }
    
    override func makeNoise() {
        print("Bicycle Noise...")
    }
}

var tandem = Tandem(noOfPassengers: 2)

var tandem1 = tandem
tandem1.noOfPassengers = 3
print(tandem.noOfPassengers)


struct Person{
    var name: String
}

var person = Person(name: "Ishar")
person.name = "Ishardeep"
