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


//How to unwrap optionals with guard
/*Like if let, guard let checks whether there is a value inside an optional, and if there is it will retrieve the value and place it into a constant of our choosing.
 
 However, the way it does so flips things around:*/
var myVar: Int? = 3
if let unwrappedmyVar = myVar {
    print("Run id myVar has a value inside")
}
func myVariable(of myVar: Int?) {
    guard let unwrappedmyVar = myVar else {
        print("Run if myVar doesn't have a value inside")
        return
    }
    print("my variable has a value")
}
myVariable(of: 5)
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    print("\(number) * \(number) is \(number * number)")
}
printSquare(of: 5)
