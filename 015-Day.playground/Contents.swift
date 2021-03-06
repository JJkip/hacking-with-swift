import UIKit


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
    mutating func trim() {
        self = trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

stringWithWhiteSpaces.trim()



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
