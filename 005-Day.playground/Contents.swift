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
printTimesTables(numberY: 5, end: 20)
printTimesTables(2, 8)
//Returning values
func square2(number: Int) -> Int {
    return number * number
}
let result = square2(number: 8)

print(result)

//:TODO
/*If you need to return multiple values, this is a perfect example of when to use tuples.*/

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
