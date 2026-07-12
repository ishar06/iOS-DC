import UIKit


// Mutating Methods
struct Odometer{
    var count: Int = 0
    
    mutating func increaseCountByOne(){
        self.count += 1
    }
    
    mutating func increaseCount(by value: Int){
        count += value
    }
    
    mutating func reset(){
        count = 0
    }
}

var odometer = Odometer()
print(odometer.count)

odometer.increaseCountByOne()
print(odometer.count)

odometer.increaseCount(by: 5)
print(odometer.count)

