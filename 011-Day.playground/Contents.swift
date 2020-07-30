import UIKit


/*A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality. The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements. Any type that satisfies the requirements of a protocol is said to conform to that protocol.*/
//Protocols
protocol Identifiable {
    var id: String { get set }
    
}

struct User: Identifiable {
    var id:String
}

func displayID(thing: Identifiable){
    print("My ID is \(thing.id)")
}
let jay = User(id: "JJ")
displayID(thing: jay)

//Protocol inheritance
/*Here’s an example of a protocol with a single instance property requirement*/
protocol FullyNamed{
    var fullName: String {get}
}
struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "John Appleseed")
john.fullName

class Starship: FullyNamed{
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String{
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
ncc1701.fullName


class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}
let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And another one: \(generator.random())")
// Prints "And another one: 0.729023776863283"


//Mutating Method Requirements
protocol Togglable{
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch  self {
        case .off:
            self = .on
        case .on:
            self  = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()
//lightSwitch is now equal to .on


//Initializer Requirements
protocol SomeProtocol{
    init(someParameter: Int)
}
//Class Implementations of Protocol Initializer Requirements
class SomeClass: SomeProtocol{
    required init(someParameter: Int) {
        //initializer implementation goes here
    }
}
/*f a subclass overrides a designated initializer from a superclass, and also implements a matching initializer requirement from a protocol, mark the initializer implementation with both the required and override modifiers:*/

protocol SomeProtocol_B{
    init()
}
class SomeSuperClass_B{
    init()
}
class SomeSubCLass_B: SomeSuperClass_B, SomeProtocol_B{
    // "required" from SomeProtocol conformance; "override" from SomeSuperClass
    required override init(){
        //initializer implementation goes here
    }
}

//Protocols as Types
class Dice{
    let sides: Int
    let generator: RandomNumberGenerator
    init (sides: Int, generator: RandomNumberGenerator){
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int {
        return Int(generator.random() * Double(sides)) + 1
    }
}

protocol Payable{
    func calculateWages() -> Int
}
protocol NeedsTrainging {
    func study()
}
protocol  HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTrainging, HasVacation {
    
}

//Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

//Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection{
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

//Protocol-oriented programming
protocol IndentifiableX {
    var idX: String { get set }
    func identifyX()
}
extension IndentifiableX {
    func identifyX() {
        print("My ID \(idX).")
    }
}
struct UserX: IndentifiableX {
    var idX: String
}
let twostraws = UserX(idX: "twostraws")
twostraws.identifyX()
