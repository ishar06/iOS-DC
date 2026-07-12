import UIKit

var names: [String] = ["Aman", "Raman", "Kamal"]
func greetUsers(names: [String]) {
    for name in names {
        for (index, char) in name.enumerated() {
            print("At Index \(index): \(char)")
        }
        print()
    }
}
greetUsers(names: names)


let vehicles : [String: Int] = [
    "Unicycle" : 1,
    "Bicycle": 2,
    "Tricycle": 3
]
for (vehicleName, noOfWheels) in vehicles {
    print("\(vehicleName) has \(noOfWheels) number of wheels.")
}
print()

var noOfLives = 3
var stillAlive = true

while stillAlive {
    print("I still have \(noOfLives) lives.")
    noOfLives -= 1
    if noOfLives == 0 {
        stillAlive = false
    }
}
