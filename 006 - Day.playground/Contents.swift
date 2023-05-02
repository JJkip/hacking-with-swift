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
func travelX() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travelX()
result("Kakamega")
let result2: Void = travelX()("Busia")

//Capturing values
func travelZ() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
result("Bomet")
result("Bomet")
result("Bomet")

//CLOSURES UPDATES
func greetUser() {
    print("Hi there")
}
greetUser()
var greetCopy = greetUser
greetCopy()

//Assign the functionality directly to a constant or variable without functions
let sayHello = {
    print("Hi there!")
}
sayHello()

//Closure to accepting parameters
let sayHi = {
    (name: String) -> String in "Hi \(name)"
}

//Type annotation for greetCopy
var greetCopyX: () -> Void = greetUser
//Every function’s type depends on the data it receives and sends back for example
func getUserData(for id: Int) -> String {
    if id == 1988 {
        return "Arap Kemai"
    } else {
        return "Anonymous"
    }
}
let data: (Int) -> String = getUserData
let user = data(1988)
print(user)

//Sorting an array with closure
let team = ["Gloria", "Soi", "Peter", "Tiff"]
let sortedTeam = team.sorted()
print(sortedTeam)
/*Sorting an array of strings in descending order*/
let sortedTeamB = team.sorted { $1 < $0 }
print(sortedTeamB)
/*In the above example the $0 and $1 shorthand syntax represent the first and second elements being compared, respectively.*/

/*Customize the sorting closure*/
func captainFirtSorted(name1: String, name2: String) -> Bool {
    if name1 == "Soi" {
        return true
    } else if name2 == "Soi" {
        return false
    }
    return name1 < name2
}
let captainFirstTeam = team.sorted(by: captainFirtSorted)
print(captainFirstTeam)
/*Calling sorted() using a closure*/
let captainFirstTeamX = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Soi" {
        return true
    } else if name2 == "Soi" {
        return false
    }
    return name1 < name2
})
print(captainFirstTeamX)


//MORE CLOSURE EXAMPLES
/*A closure that takes two integers and returns their sum:*/
let sum = { (a: Int, b: Int) -> Int in
    return a + b
}
let result4 = sum(4,8)
print(result2)

/*Using the "trailing closure" syntax:*/
let numbers = [1,3,7,2,8,4,12,6]
let doubleNumbers = numbers.map {$0 * 2}
print(doubleNumbers)
//Filtering an array of numbers:
let evenNumbers = numbers.filter { $0 % 2 == 0 }
print(evenNumbers)
print(evenNumbers.sorted())

/*Closures and how they can be used to create closures with captured values from its surrounding context. This means that it can access variables and constants from the scope in which it is defined. For example:*/
func makeAdder(forIncreament amount: Int) -> (() -> Int) {
    var runningTotal = 0
    return {
        runningTotal += amount
        return runningTotal
    }
}
let add5 = makeAdder(forIncreament: 5)
let add10 = makeAdder(forIncreament: 10)
print(add5())
print(add5())
print(add10())
print(add10())
print(add5())
/*In the above example, makeAdder(forIncrement:) is a function that returns a closure. The closure captures the runningTotal variable from the function's scope and increments it by the specified amount. The makeAdder(forIncrement:) function is called twice to create two separate closures: add5 and add10. Each closure has its own runningTotal variable that is separate from the other closure's variable.*/

