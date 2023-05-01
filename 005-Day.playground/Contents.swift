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

//Another example of omitting parameter labels
func printTimesTablesC(numberY: Int, end: Int){
    for i in 1...end {
        print("\(i) x \(numberY) is \(i * numberY)")
    }
}
printTimesTablesC(numberY: 2, end: 5)
/*👆VS👇*/
func printTimesTableD(for numberY: Int, end: Int){
    for i in 1...end {
        print("\(i) x \(numberY) is \(i * numberY)")
    }
}
printTimesTableD(for: 2, end: 6)

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

//Provide default values for parameters
var characters = ["Lana", "Pam", "Ray", "Stacy"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

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
    case short, obvious
}

func checkPassword(_ password: String) throws -> String{
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}
//Running throwing functions
let string = "12345"
do {
    let result = try checkPassword(string)
    print("That password is rating is: \(result)!")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination of my luggage")
} catch {
    print("There was an error")
}

//input parameters
func doubleInPlace(number: inout Int){
    number *= 2
    print("The new number is: \(number)")
}
var myNum = 10
var myNum2 = 5
doubleInPlace(number: &myNum)
doubleInPlace(number: &myNum2)

//Binary search algorithm to find the integer square root of the input number.
enum IntegerSqrtError: Error {
    case outOfBounds
    case noRoot
}

func integerSqrt(_ num: Int) throws -> Int {
    guard num >= 1 && num <= 10_000 else {
        throw IntegerSqrtError.outOfBounds
    }
    
    var left = 1
    var right = num
    
    while left <= right {
        let mid = (left + right) / 2
        if mid * mid == num {
            return mid
        } else if mid * mid < num {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    
    throw IntegerSqrtError.noRoot
}

do {
    let checkSqrt = 12
    let sqrt = try integerSqrt(checkSqrt)
    print("The square root of \(checkSqrt) is \(sqrt).")
} catch IntegerSqrtError.outOfBounds {
    print("Error: The input number is out of bounds.")
} catch IntegerSqrtError.noRoot {
    print("Error: There is no integer square root for the number.")
} catch {
    print("Error: \(error)")
}
/*
 This function uses the binary search algorithm to find the integer square root of the input number. We start by setting left to 1 and right to the input number. We then loop while left is less than or equal to right. At each iteration, we calculate the midpoint mid between left and right. If mid squared equals the input number, we've found the integer square root and return it. If mid squared is less than the input number, we move left to mid + 1. Otherwise, we move right to mid - 1. We keep doing this until we've found the largest integer whose square is less than or equal to the input number, which we return as the result of the function.
 
 We've defined an IntegerSqrtError enum that has a case for the outOfBounds and a no root error.
 
 In the function body, we first check whether the input number is within the allowed range of 1 to 10,000. If it's not, we throw the outOfBounds error. Otherwise, we proceed with the same binary search algorithm as before to compute the integer square root of the input number.
 
 If the function throws an error, you can handle it using Swift's do-catch syntax.
 
 If we get to the end of the while loop and haven't found the integer square root, we throw  the IntegerSqrtError enum called noRoot.
 
 In the above, we're calling the integerSqrt function with an input number of 12, which doesn't have an integer square root. We're wrapping the function call in a do-catch block to handle any errors that may be thrown. In this case, the catch block for the noRoot error is executed, and we print an error message to the console. If any other error is thrown, we print a generic error message that includes the error description.
 


 */
