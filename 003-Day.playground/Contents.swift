import UIKit


//Arithmetic operators
let firstScore = 14
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided  = firstScore / secondScore

let remainder = 13 % secondScore

//Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//Compound assignment operators
var score = 95
score -= 5

var quote = "The rain Spain falls mainly on the "
quote += "Sparniards"

//Comparison operators
let firstScore1 = 6
let secondScore2 = 4

firstScore1 == secondScore2
firstScore1 != secondScore2
firstScore1 < secondScore2
firstScore1 >= secondScore2

"Taylor" <= "Swift"

//Conditions

let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 21 {
    print("Blackjail!")
}

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces - lucky")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
    } else {
    print("Regular cards")
}

//Check a condition is true or false
/*So, if the string inside ourName comes before the string inside friendName when sorted alphabetically, it prints ourName first then friendName, exactly as we wanted.*/
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}
if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)
if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Canada"
if country == "Australia" {
    print("G'day!")
}

var name = "Taylor Swift"
if name != "Anonymous" {
    print("Welcome, \(name)")
}
if name == "" {
    name = "Anonymous"
}
print("Welcome, \(name)!")
if name.count == 0 {
    name = "Anonymous"
}
if name.isEmpty == true {
    name = "Anonymous"
}
if name.isEmpty {
    name = "Anonymous"
}
//Combining conditions
let age1 = 12
let age2 = 21
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}
if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

//The ternary operator
let thirdCard = 11
let forthCard = 10
print(firstCard == secondCard ? "Cards are the same" : "CArds are different")

if thirdCard == forthCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}

//Switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny" :
    print("Ware sunscreen")
default:
    print("Enjoy your day!")
}

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny" :
    print("Ware sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

//Range operators
let examScore = 85

switch examScore {
case 0..<50:
    print("You failed badly")
case 50..<85
    print("You did OK.")
default:
    print("You did great")
}
