import UIKit

//Creating Structs
struct Sport1 {
    var name: String
}
var tennis = Sport1(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn tennis"

//Computed properties
struct Sport {
    var name: String
    var isOlympicSport: Bool
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}
let chessBoxing =  Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

//Property observers
struct Progress {
    var task: String
    var amount: Int {
        didSet{
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

//:TODO
//willSet

//Methods or Functins inside Struct

struct City{
    var population: Int
    func collectTaxes() -> Int {
        return population * 1000
    }
}
let nairobi = City(population: 2_000_000)
nairobi.collectTaxes()

//Mutating methods
struct Person {
    var name: String
    mutating func makeAnonymus(){
        name = "Anonymus"
    }
}
var person = Person(name: "JayJay")
person.makeAnonymus()

//Properties and methods of strings
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

//Properties and methods of arrays
var toys = ["Woody"]
print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
print(toys.sorted())
toys.remove(at: 0)

// STRUCTS UPDATE
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}
let sautisol = Album(title: "Nobody", artist: "Bien", year: 2023)
let genge = Album(title: "Wainame", artist: "KRG", year: 2018)

print(sautisol.title)
print(genge.artist)

sautisol.printSummary()
genge.printSummary()

//Changing values of a struct function
struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int){
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Ooops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "John Omondi", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var archer1 = Employee(name: "John Omondi", vacationRemaining: 14)
var archer2 = Employee.init(name: "John Omondi", vacationRemaining: 14)
/*In the above one might seem a bit odd at first, because we’re treating our struct like a function and passing in parameters. This is a little bit of what’s called syntactic sugar – Swift silently creates a special function inside the struct called init(), using all the properties of the struct as its parameters. It then automatically treats these two pieces of code as being the same:*/


struct EmployeeX {
    let name: String
    var vacationRemainingX: Int
}
var archer3 = EmployeeX(name: "Wakio Wamwire", vacationRemainingX: 14)
archer3.vacationRemainingX -= 5
print("Days remaining: \(archer3.vacationRemainingX)")
archer3.vacationRemainingX -= 3
print("Remaining days: \(archer3.vacationRemainingX)")
/*The code above works as a trivial struct, but we’re losing valuable information – we’re assigning this employee 14 days of vacation then subtracting them as days are taken, but in doing so we’ve lost how many days they were originally granted. Bwlow is how to fix the code*/

struct EmployeeY {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
//    var vacationRemaining: Int {
//        vacationAllocated - vacationTaken
//    }
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
var archer4 = EmployeeY(name: "John Doe", vacationAllocated: 14)
archer4.vacationTaken += 4
print("NO of days remaining: \(archer4.vacationRemaining)")
archer4.vacationRemaining = 4
print("Days allowed: \(archer4.vacationAllocated)")

//Property obsevers. These take two forms: a didSet observer to run when the property just changed, and a willSet observer to run before the property changed.
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}
var game = Game()
game.score += 10
game.score -= 3
game.score += 1
/*If you want it, Swift automatically provides the constant oldValue inside didSet, in case you need to have custom functionality based on what you were changing from. There’s also a willSet variant that runs some code before the property changes, which in turn provides the new value that will be assigned in case you want to take different action based on that.*/
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count)")
            print("Old value was \(oldValue)")
        }
    }
}
var app = App()
app.contacts.append("James")
app.contacts.append("Mary")
app.contacts.append("Isua")

//Custom initializers
/*Just remember the golden rule: all properties must have a value by the time the initializer ends. If we had not provided a value for number inside the initializer, Swift would refuse to build our code.
 
 Important: Although you can call other methods of your struct inside your initializer, you can’t do so before assigning values to all your properties – Swift needs to be sure everything is safe before doing anything else.

 You can add multiple initializers to your structs if you want, as well as leveraging features such as external parameter names and default values. However, as soon as you implement your own custom initializers you’ll lose access to Swift’s generated memberwise initializer unless you take extra steps to retain it. This isn’t an accident: if you have a custom initializer, Swift effectively assumes that’s because you have some special way to initialize your properties, which means the default one should no longer be available
*/
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
let player = Player(name: "Rooney")
print(player.number)

//How to limit access to internal data using access control

struct BankAccount {
    var funds = 0
    
    mutating func deposit(amount: Int){
        funds += amount
    }
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get money")
}

account.funds -= 1000

//Static properties and methods
struct School {
    static var studentCount = 0
    static func add(student: String){
        print("\(student) joined the school")
        studentCount += 1
    }
}
/* In the above example notice the keyword static in there, which means both the studentCount property and add() method belong to the School struct itself, rather than to individual instances of the struct.
 
 To use that code, we’d write the following:*/
School.add(student: "Mary Wambui")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.wasiliana.com"
}
/*In the above example using this approach, everywhere I need to check or display something like my app’s version number – an about screen, debug output, logging information, support emails, etc – I can read AppData.version.
 
*/

struct EmployeeA {
    let username: String
    let password: String

    static let example = EmployeeA(username: "qwerty", password: "hairforceone")
}
