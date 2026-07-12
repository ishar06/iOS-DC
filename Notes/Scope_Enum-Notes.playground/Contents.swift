import UIKit

// VARIABLE SHADOWING
let points = 100
for index in 1...3{
    let points = 200
    print(index + points)
}
print(points)


// ENUMERATIONS

enum CompassPoint {
    case north, south, east, west
}

var compassHead: CompassPoint = .north
compassHead = .west


