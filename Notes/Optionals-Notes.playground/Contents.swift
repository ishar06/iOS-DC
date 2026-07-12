import UIKit

struct Book {
    let name: String?
    let publicationYear: Int?
}

let firstBook = Book(name: "First Book", publicationYear: 2023)
let secondBook = Book(name: "Second Book", publicationYear: 2025)
let unannouncedBook = Book(name: "Third Book", publicationYear: nil)


// Forced Unwrapping
if firstBook.publicationYear != nil {
    print(firstBook.publicationYear!)
}else{
    print("It contains a 'nil' value.")
}


// Optional Unwrapping
if let bookName = firstBook.name {
    print(bookName)
}

if let year = firstBook.publicationYear {
    print(year)
}

if let bookName = secondBook.name, let year = secondBook.publicationYear {
    print("\(bookName) was published in \(year).")
}


// TYPE CONVERSION
let string: String = "123"
let anotherString: String = "Ishar"

let intValue = Int(string)
print(intValue!)


func printFullName(firstName: String, middleName: String?, lastName: String){
    if let middleName = middleName {
        print("\(firstName) \(middleName) \(lastName)")
    }else{
        print("\(firstName) \(lastName)")
    }
}

printFullName(firstName: "Ishardeep", middleName: nil, lastName: "Singh")
printFullName(firstName: "Ishardeep", middleName: "Singh", lastName: "Bhatti")

print("======\n======")


// Failable Initializers
struct Toddler {
    var birthName: String
    var monthsOld: Int
    init?(birthName: String, monthsOld: Int) {
        if monthsOld < 12 || monthsOld > 36 {
            return nil
        }
        self.birthName = birthName
        self.monthsOld = monthsOld
    }
}


let toddler = Toddler(birthName: "Raj", monthsOld: 12)

if let toddler = toddler {
    print("Toddler name is \(toddler.birthName) and age is \(toddler.monthsOld).")
}else{
    print("It is not a Toddler.")
}


// Optional Chaining

struct Person {
    var name: String
    var residence: Residence?
}

struct Residence {
    var address: Address?
}

struct Address {
    var buildingName: String?
    var streetName: String?
    var apartmentNumber: String?
}

let address = Address(buildingName: "Anahat", streetName: "Kamal Colony", apartmentNumber: "206")
let residence = Residence(address: address)
let person = Person(name: "Ishar", residence: residence)

let anotherPerson = Person(
    name: "Raman",
    residence: Residence(
        address: Address(
            buildingName: "ABC Building",
            streetName: "Road No. 2",
            apartmentNumber: "102"
        )
    )
)

if let residence = person.residence {
    if let address = residence.address {
        if let apartmentNumber = address.apartmentNumber {
            print(apartmentNumber)
        }
    }
}

if let apartmentNumber = person.residence?.address?.apartmentNumber {
    print(apartmentNumber)
}
