import UIKit

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

//Protocol inheritance
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
