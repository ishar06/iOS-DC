import UIKit

@MainActor
struct DeliveryPackage{
    var packageID: Int
    var destination: String
    var deliveryCharges: Double
    var priority: Int
    var currentStatus: String
    var weight: Double{
        didSet{
            deliveryCharges = weight * 10
        }
    }
    
    static var totalPackagesCreated = 0
    
    static let deliveryPolicy = "Packages are picked up within 24 hours and insured up to $50."
    
    init(packageID: Int = 0, destination: String = "", deliveryCharges: Double = 0.0, priority: Int = 0, currentStatus: String = "", weight: Double = 0.0) {
        self.packageID = DeliveryPackage.totalPackagesCreated
        self.destination = destination
        self.deliveryCharges = weight * 10
        self.priority = priority
        self.currentStatus = currentStatus
        self.weight = weight
        
        DeliveryPackage.totalPackagesCreated += 1
    }
    
    mutating func updateWeight(to newWeight: Double){
        weight = newWeight
        deliveryCharges = weight * 10
    }
    
    mutating func changeDestination(to newDestination: String){
        destination = newDestination
    }
    
    mutating func markDelivered(){
        currentStatus = "Delivered"
    }
    
    func finalBill() -> Double{
        return deliveryCharges + (deliveryCharges * 0.18)
    }
}
    

class Drone{
    let droneID: Int
    var batteryLevel: Double
    var currentLocation: String
    var isFlying: Bool = false
    
    init(id: Int = 0, batteryLevel: Double = 0.0, currentLocation: String = "") {
        self.droneID = id
        self.batteryLevel = batteryLevel
        self.currentLocation = currentLocation
    }
    
    func startDelivery(){
        print("Drone \(droneID) started delivery.")
        isFlying = true
    }
    
    func fly(distance: Double){
        batteryLevel -= distance * 2
        if batteryLevel < 0 {
            batteryLevel = 0
        }
        print("Battery Level: \(batteryLevel)%." )
        isFlying = true
    }
}

class MedcialEmergencyDrone: Drone{
    var emergencyModeActive: Bool = false
    
    func activateEmergencyMode(){
        print("Emergency Mode Activated.")
        emergencyModeActive = true
    }
    
    override func startDelivery() {
        if emergencyModeActive {
            print("Medical Emergency Drone \(droneID) deployed.")
        }else{
            super.startDelivery()
        }
        isFlying = true
    }
}

var package1 = DeliveryPackage(destination: "Armstrong Boys Hostel", weight: 2.5)
var package2 = package1

package2.changeDestination(to: "Archimedes Boys Hostel")
print(package1.destination)
print(package2.destination)



let drone1 = Drone(id: 101, batteryLevel: 100.0, currentLocation: "Station")
let drone2 = drone1
drone2.currentLocation = "Library"
print(drone1.currentLocation)
print(drone2.currentLocation)
