/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    let ram: Int
    let yearManufactured: Int
    
    init? (ram: Int, yearManufactured: Int) {
        if ram < 0 ||  yearManufactured < 1970 || yearManufactured > 2020 {
            return nil
        }
        self.ram = ram
        self.yearManufactured = yearManufactured
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
let instance1 = Computer(ram: 32, yearManufactured: 2019)
let instance2 = Computer(ram: -1, yearManufactured: 1971)

if let ram = instance1?.ram, let year = instance1?.yearManufactured {
    print(ram)
    print(year)
}

if let ram = instance2?.ram, let year = instance2?.yearManufactured {
    print(ram)
    print(year)
}
/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
