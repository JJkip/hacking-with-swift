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

