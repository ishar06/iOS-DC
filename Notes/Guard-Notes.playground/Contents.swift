import UIKit

/*
 GUARD -- Control Flow Statement that lets you exit a function early.
    
 guard condition else {
    // false: execute some code, early exit condition
 }
 // true: execute some code
 
 
 */

func divide1(_ number: Double, by divisor: Double) {
    if divisor != 0 {
        let result = number / divisor
        print(result)
    }
}

func divide(_ number: Double, by divisor: Double) {
    guard divisor != 0.0 else {
        return
    }
    let result = number / divisor
    print(result)
}


