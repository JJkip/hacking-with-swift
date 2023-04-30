import UIKit

func printHelp() {
    let message = """
    Welcome to MyApp!
    Run this app inside a directory of images and
    MyApp will resize them all into thumbnails
    """
    print(message)
}

printHelp()

//Accepting parameters

func square(number: Int){
    print("\(number) x \(number) is \(number * number)")
}
square(number: 8)

func printTimesTable(numberX: Int){
    for i in 1...12 {
        print("\(i) x \(numberX) is \(i * numberX)")
    }
}
printTimesTable(numberX: 5)

func printTimesTables(numberY: Int, end: Int){
    for i in 1...end {
        print("\(i) x \(numberY) is \(i * numberY)")
    }
}
printTimesTables(numberY: 2, end: 5)

//Returning values
func square2(number: Int) -> Int {
    return number * number
}
let result = square2(number: 8)
print(result)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}
let diceResult = rollDice()
print(diceResult)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}
areLettersIdentical(string1: "abc", string2: "cab")
func areLettersIdentical2(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}
func areLettersIdentical3(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

func pythagoras(a: Double, b: Double) -> Double {
    /*let input = (a * a) + (b * b)
    let root = sqrt(input)
    return root*/
    sqrt((a * a)+(b * b))
}
let c = pythagoras(a: 3, b: 4)
print(c)
print(pythagoras(a: 4, b: 6))

//:TODO
/*If you need to return multiple values, this is a perfect example of when to use tuples.*/
//Return multiple values
func getUser() -> (firstName: String, lastName: String){
//    (firstName: "Dickson", lastName: "Kamau")
    ("Dickson","Kamau")
}
let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
print("Name: \(getUser().firstName) \(getUser().lastName)")
print("Name: \(user.0) \(user.1)")
/**pulling the tuple apart into individual values **/
let fName = user.firstName
let lName = user.lastName
print("Name: \(fName) \(lName)")
let (aName, bName) =  getUser()
print("Name: \(aName) \(bName)")
let (xName, _) = getUser()
print("Name: \(xName)")

//Parameter labels
func sayHello(to name: String){
    print("Hello, \(name)")
}
sayHello(to: "Taylor")

//Omitting parameter labels
func greet(_ person: String){
    print("Hello, \(person)")
}
greet("James")
//Another example of omitting parameter labels
func isUppercase(our_string: String) -> Bool{
    our_string == our_string.uppercased()
}
let ransom_string = "HELLO, WORLD"
let result5 = isUppercase(our_string: ransom_string)
/*👆VS👇*/
func isUppercased(_ our_string: String) -> Bool {
    our_string == our_string.uppercased()
}
let another_random_string = "HI THERE"
let result6 = isUppercased(another_random_string)
//Another example of omitting parameter labels
func printTimesTableA(number: Int){
    for i in 1...12 {
        print ("\(i) x \(number) is \(i * number)")
    }
}
printTimesTableA(number: 5)
/*👆VS👇*/
func printTimesTablesB(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTablesB(for: 5)

//Default parameters
func greetings(_ person: String, nicely: Bool = true){
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greetings("Taylor")
greetings("Taylor", nicely: false)

func greetings2(_ person: String = "James"){
    print("Hello, \(person)")
}

//Customize Parameter Labels
func rollDice(sides: Int, count: Int) -> [Int]{
    //we will start with an empty array
    var rolls = [Int]()
    //roll as many dice as needed
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    //send  back all the rolls
    return rolls
}
let rolls = rollDice(sides: 6, count: 4)

let lyric =  "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

//Variadic functions
/**Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.*/
func squareManyNumbers(numbers: Int...){
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
squareManyNumbers(numbers: 1,2,3,4,5)

//Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool{
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
//Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}

//inout parameters
func doubleInPlace(number: inout Int){
    number *= 2
    print("The new number is: \(number)")
}
var myNum = 10
var myNum2 = 5
doubleInPlace(number: &myNum)
doubleInPlace(number: &myNum2)
