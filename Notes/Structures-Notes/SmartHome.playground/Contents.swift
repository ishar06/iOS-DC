import UIKit

struct SmartDevice{
    var roomName: String
    var brightness: Int
    var powerStatus: Bool
    var color: String
}

var smartLight = SmartDevice(roomName: "iOS DC", brightness: 80, powerStatus: true, color: "White")
smartLight.powerStatus = false
smartLight.brightness = 100

var powerMode: String
if smartLight.powerStatus {
    switch smartLight.brightness {
    case 0...29:
        powerMode = "Low"
    case 30...69:
        powerMode = "Medium"
    case 70...100:
        powerMode = "High"
    default:
        powerMode = "Unknown"
    }
}



