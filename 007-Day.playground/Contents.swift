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

