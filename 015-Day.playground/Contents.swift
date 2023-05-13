import UIKit
//import Cocoa

//Properties and property oberservers
struct PersonA {
    var clothes: String{
        willSet{
            updateUI(msg: "I'm changeing from \(clothes) to \(newValue)")
        }
        didSet{
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String){
    print(msg)
}

var taylorA = PersonA(clothes: "T-shirt")
taylorA.clothes = "short skirts"

//Computed properties
struct PersonB{
    var age: Int
    var ageInDogyears: Int{
        get{
            return age * 7
        }
    }
}

var fan = PersonB(age: 25)
print(fan.ageInDogyears)

//Static properties and methods
struct TaylorFan{
    static var favoriteSong = "Look what you made me do!"
    
    var name: String
    var age: Int
}

let fanB = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)
print(fanB.age)
print(TaylorFan.favoriteSong + fanB.name)

//Access control

/*Public: this means everyone can read and write the property.
Internal: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property.
File Private: this means that only Swift code in the same file as the type can read and write the property.
Private: this is the most restrictive option, and means the property is available only inside methods that belong to the type, or its extensions.*/

class TylorFanC {
    private var name: String?
    fileprivate var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

//Polymorphism and typecasting

class Album{
    var name: String
    init(name: String) {
        self.name = name
    }
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}
class StudioAlbum: Album{
    var studio: String
    init(name: String,studio: String){
        self.studio = studio
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "The studio albmum \(name) sold lots"
    }
}
class LiveAlbum: Album {
    var location: String
    init(name: String, location: String){
        self.location = location
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}
var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The castles studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeed Studio ")
var iTunesLive =  LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

//var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

//for album in allAlbums {
//    print(album.getPerformance())
//    if let studioAlbum = album as? StudioAlbum{
//        print(studioAlbum.studio)
//    } else if let liveAlbum = album as? LiveAlbum{
//        print(liveAlbum.location)
//    }
//}

var allAlbums: [Album] = [taylorSwift, fearless]
//for album in allAlbums{
//    let studioAlbum = album as! StudioAlbum
//    print(studioAlbum.studio)
//}

//for album in allAlbums as! [StudioAlbum]{
//    print(album.studio)
//}

for album in allAlbums as? [LiveAlbum] ?? [LiveAlbum](){
    print(album.location)
}

//Converting common types with initializers
let  number = 5
//let text = number as! String
let text = String(number)
print(text)

//Closures
let vwA = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vwA.alpha = 0
})

//Trailing closures
let vwB = UIView()

UIView.animate(withDuration: 0.5) {
    vwB.alpha = 0
}

//Protocols

protocol Employee {
    var name: String {get set}
    var jobTitle: String{get set}
    func doWork()
}

struct Excecutive: Employee{
    var name = "Steve jobs"
    var jobTitle = "CEO"
    func doWork() {
        print("I'm strategizing!")
    }
}

struct Manager: Employee {
    var name = "Maurice Moss"
    var jobTitle = "Head of IT"
    func doWork(){
        print("I'm turning it off and on again.")
    }
}

let staff: [Employee] = [Excecutive(), Manager()]

for person in staff {
    person.doWork()
}

//Extensions
var myInt = 0

extension Int {
   mutating func plusOne() -> Int{
//        return self + 1
        self + 1
    }
}

myInt.plusOne()
//5.plusOne()

var myIntB = 10
myIntB.plusOne()
myIntB
var stringWithWhiteSpaces = "s w i f t    i o s"

extension String{
    mutating func trimA() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

stringWithWhiteSpaces.trimA()



//Protocol extensions

extension Int{
    func clamp(low: Int, high: Int) -> Int{
        if (self > high){
            //if we are higher than the upper bound, return the upper bound
            return high
        } else if (self < low) {
            //if we are lowe than the upper bound, return the lower bound
            return low
        }
        return self
    }
}
let i: Int = 8
print(i.clamp(low: 0, high: 5))

extension BinaryInteger {
    func clamp(low: Self, high: Self) -> Self{
        if(self > high){
            return high
        } else if (self < low){
            return low
        }
        return self
    }
}
/*As an example, we might define an extension for our Employee protocol so that all conforming types automatically get a doWork() method:

*/
protocol EmployeeC {
    var name: String {get set}
    var jobTitle: String { get set}
    func doWork()
}

extension Employee{
    func doWork(){
        print("I'm busy!")
    }
}


//UPDATES
//How to create and use protocols
protocol Vehicle {
    var name: String { get }
    var currentPassangers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
protocol canBeElectric {}
struct Car: Vehicle, canBeElectric {
    let name = "Car"
    var currentPassangers = 2
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    func openSunroof() {
        print("It's a nice day")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow try a different vehicle")
    } else {
        vehicle.travel(distance: distance)
    }
}
func getTravelEstimate(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)")
    }
}

let car = Car()
commute(distance: 100, using: car)

struct Bicycle: Vehicle {
    let name = "Hero Jet"
    var currentPassangers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}
let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimate(using: [car, bike], distance: 150)

//How to use opaque return types
func getRandomNumber() -> some Equatable {
    Double.random(in: 1...6)
}
func getRandomBool() -> some Equatable {
    Bool.random()
}
print(getRandomNumber() == getRandomNumber())

//How to create and use extensions
var quote = "   The truth is rarely pure and never simple   "
let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    mutating func trim() {
        self = self.trimmed()
    }
    
    var lines: [String] {
        self.components(separatedBy: .whitespacesAndNewlines)
    }
}
quote.trim()
let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""
print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 50
    }
}
let lotr = Book(title: "Lord of the rings", pageCount: 1178, readingHours: 24)


//How to create and use protocol extensions
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
let guests = ["Jane", "Tom", "Mary"]
if guests.isNotEmpty {
    print("Guests count: \(guests.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}
struct EmployeeB: Person {
    let name: String
}
let terry = EmployeeB(name: "Terry Hans")
terry.sayHello()
