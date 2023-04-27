import UIKit

//Arrays
let john = "John Lennon"
let paul = "Paul McCarthy"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[2]
    
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)

for character in characters {
    print(character)
}
characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Spectre"))
let cities = ["Nairobi","Kisumu","Mombasa","Nakuru"]
print(cities.sorted())
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)


//Sets
let colors = Set(["red","green","blue"])

let colors2 = Set(["red","green","blue","red","blue"])

//Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

//Arrays vs sets vs tuples
/*If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple*/
let address = (house: 555, street: "Taylor swift Avenue", city: "Nashville")

/*f you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set*/
let set = Set(["aardvark","astronant","azala"])

/*If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array*/
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//Dictionaries
/*Dictionaries are collections of values just like arrays, but rather than storing things with an integer position you can access them using anything you want*/
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

//Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]
let employee2 = [
    "name":"Tom Makmende",
    "job":"Plumber",
    "location":"Nairobi",
    "gender":"Identifies as Male",
]

print(employee2["name", default: "Unkown"])
print(employee2["job",default: "Unknown"])
print(employee2["gender", default: "Unknown"])

let hasGraduated = [
    "John": true,
    "Peter": true,
    "Mary": false
]

let olympics = [
    2012:"London",
    2016: "Rio de Jenerio",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

//Creating empty collections
/*empty dictionary using explicit types*/
var heights4 = [String: Int]()
heights4["Yao Ming"] = 229
heights4["Shaquille O'Neal"] = 216
heights4["James LeBron"] = 206

var teams = [String: String]()
teams["Paul"] = "Red"
/*Dictionary overiding previous keys*/
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luther"
archEnemies["Batman"] = "Penguin"
/*empty array*/
var results = [Int]()
/*empty set*/
var words = Set<String>()
var numbers = Set <Int>()
var actors = Set(["John Wink","Tom Cruise", "Nicholas Cage", "Samuel Jackson"])
print(actors)
var people = Set<String>()
people.insert("John Wink")
people.insert("Tom Cruise")
people.insert("Nicholas Cage")
people.insert("Samuel Jackson")
print(people)

/*arrays and dictionaries with similar syntax*/
var scores = Dictionary<String,Int>()
var results4 = Array<Int>()

//Enumerations
let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

//Enum associated values
enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity2.talking(topic: "football")
/*case can be used onced e.g*/
enum WeekDay{
    case monday, tuesday, wednesday, thursday, friday
}
var day = WeekDay.monday
day = .tuesday
day = .friday

//Enum raw values
enum Planet: Int {
    case mercury
    case venus
    case eatth
    case mars
}
let earth = Planet(rawValue: 2)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

//Type Annotation
/*Arrays*/
var soda: [String] = ["Fanta","Krest","Coke"]
var faTeams: [String] = [String]()
var cities2: [String] = []
var clues = [String]()
/*Enums*/
enum UIStyle {
    case light, dark, system
}
var style: UIStyle = UIStyle.light
style = .dark
/*constants*/
let username: String
/**we do lots of  complex logic**/
username = "jayjay"
/**we do lots of  complex logic again**/
print(username)
