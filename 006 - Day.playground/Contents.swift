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

//Using closures as parameters when they accept parameters
func traveller(action: (String) -> Void){
    print("I'm getting ready to go.")
    action("Nairobi")
    print("I arrived!")
}
traveller { (place: String) in
    print("I'm going \(place) in my car")
}

//Using closures as parameters when they return values
func travels(action2: (String) -> String) {
    print("I'm getting ready to go")
    let description = action2("Kisumu")
    print(description)
    print("I arrived")
}
travels{ (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//Shorthand parameter names
func travel(action: (String) -> String){
    print("I'm getting ready to go.")
    let description = action("Kericho")
    print(description)
    print("I arrivrd!")
}
travel {
    "I'm going to \($0) in my car"
}

//Closures with multiple parameters
func travel(action: (String, Int) -> String){
    print("I'm getting ready to go")
    let description = action("Nakuru", 100)
    print(description)
    print("I arrived")
}
travel{
    "I'm going to \($0) at \($1) miles per hour"
}

//Returning closures from functions
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel()
result("Kakamega")
let result2 = travel()("Busia")

//Capturing values
func travel() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
result("Bomet")
result("Bomet")
result("Bomet")
