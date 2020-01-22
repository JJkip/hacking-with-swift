import UIKit

//Creating basic closures
let driving = {
    print("I'm driving in my car")
}
driving()

//Accepting parameters in a closure
let drivingIn = { (place: String) in
    print("I'm going to \(place) in my car")
}
drivingIn("London")

//Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

//Closures as parameters
let dring = {
    print("I'm driving in my car")
}
func travel(action: () -> Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

//Trailing closure syntax
func travelling(action: () -> Void){
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travelling() {
    print("I'm driving in my car")
}
travelling {
    print("I'm driving in my car")
}
