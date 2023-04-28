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
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
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

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
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
