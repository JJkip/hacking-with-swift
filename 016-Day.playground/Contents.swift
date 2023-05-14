import UIKit

//How to handle missing data with optionals
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]
let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites ["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}
func square(number: Int) -> Int {
    number * number
}
var number: Int? = nil
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}
/*When unwrapping optionals, it’s very common to unwrap them into a constant of the same name. This is perfectly allowable in Swift, and means we don’t need to keep naming constants unwrappedNumber or similar.*/
