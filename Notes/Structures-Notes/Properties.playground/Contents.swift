import UIKit


/*
struct Temperature{
    let celsius: Double
    let fahrenheit: Double
    let kelvin: Double
    
    init(celsius: Double) {
        self.celsius = celsius
        self.fahrenheit = celsius * 9/5 + 32
        self.kelvin = celsius + 273.15
    }
    
    init(fahrenheit: Double){
        self.celsius = (fahrenheit - 32) * 5/9
        self.fahrenheit = fahrenheit
        self.kelvin = (fahrenheit - 32) * 5/9 + 273.15
    }
    
    init(kelvin: Double){
        self.celsius = kelvin - 273.15
        self.fahrenheit = celsius * 5/9 + 32
        self.kelvin = kelvin
    }
}
*/


// Computed Properties
/*
struct Temperature{
    var celsius: Double
    var fahrenheit: Double {
        celsius * 1.8 + 32
    }
    var kelvin: Double {
        celsius + 273.15
    }
}
*/


// Property Observers: willSet and didSet
struct Temp{
    var celsius: Double {
        willSet{
            if (newValue == 45){
                print("Temperature is too Hot outside.")
            }
            print("Celsius is going to change to \(newValue).")
        }
        didSet{
            print("Celsius was \(oldValue) earlier.")
        }
    }
    var fahrenheit: Double {
        celsius * 1.8 + 32
    }
    var kelvin: Double {
        celsius + 273.15
    }
}

var temperature = Temp(celsius: 32)
print(temperature.celsius)
print(temperature.fahrenheit)
print(temperature.kelvin)

temperature.celsius = 45
print(temperature.celsius)


// Type Properties and Type Methods

struct Temperature{
    static let boilingPoint = 100.0
}

