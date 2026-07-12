import UIKit

struct Car{
    var make: String
    var year: Int
    var color: String
    
    func startTheCar(){
        print("Car has started.")
    }
    func stopTheCar(){
        print("Car has stopped.")
    }
    
    func displayCarInfo(){
        print("========================")
        print("Car Make: \(make)")
        print("Year: \(year)")
        print("Color: \(color)")
        print("========================")
        print()
    }
}

let car1 = Car(make: "Toyota", year: 2021, color: "grey")
car1.displayCarInfo()
car1.startTheCar()
car1.stopTheCar()
