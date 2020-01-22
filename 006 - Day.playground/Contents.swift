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
