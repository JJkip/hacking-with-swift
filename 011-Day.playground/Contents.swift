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
