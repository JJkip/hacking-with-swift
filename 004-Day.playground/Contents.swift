import UIKit

//For Loops
/*with range*/
let count = 1...10
for number in count {
    print("Number is \(number)")
}

for i in 1...5 {
    print("5 x \(i) is \(5 * i)")
}

/*with arrays*/
let albums = ["Red","1989","Reputation"]
for album in albums{
    print("\(album) in on apple music")
}

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift works great on \(os).")
}

/*replacing the loop constant*/
print("Players gonna")
for _ in 1...5{
    print("play")
}

//While loops
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come!")

//Repeat loops
var numberz = 1
repeat {
    print(numberz)
    numberz += 1
} while numberz <= 20
print("Ready or not, here I come!")

//while false {
//    print("This is false")
//}

repeat{
    print("This is false")
} while false

//Exiting loops
var countDown = 5
while countDown >= 5 {
    print(countDown)
    countDown -= 1
}
print("Blast off")

/*In this case, astronaut in command gets bored part-way through the countdown and decides to skip the remainder and launch straight away*/

while countDown >= 3 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now")
        break
    }
    countDown -= 1
}

//Exiting multiple loops
/*Loops inside lopps*/
for i in 1...5 {
    print("The \(i) times:")
    for j in 1...5 {
        print("\(j) x \(i) is \(j * i)")
    }
//    print()
}
/*excluding the final number: ..<*/
for i in 1...5 {
    print("Counting from 1 though 5: \(i)")
}
print()
for i in 1..<5 {
    print("Counting 1 upto 5: \(i)")
}
/*looping without the loop variable*/
var lyric = "Haters gonna"
for _ in 1...5 {
    lyric += " hate"
}
print(lyric)
/*calculating the times tables from 1 through 10*/
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}
/*Exiting a nested loop*/
outerLoop: for i_ in 1...10 {
    for j_ in 1...10 {
        let product_ = i_ * j_
        print ("\(i_) * \(j_) is \(product_)")
        
        if product_ == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
    print("===== \(i_+1) ======")
}

//Skipping items
for i__ in 1...10 {
    if i__ % 2 == 1 {
        continue
    }
    print(i__)
}

let filenames = ["me.jpg", "work.txt", "sophie.jpg"]
for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}

let number1 = 4
let number2 = 14
var multiples = [Int]()
for i in 1...100000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)

let number3 = 3
let number5 = 5
var multiplesX = [Int]()
for y in 1...50 {
    if y.isMultiple(of: number3) && y.isMultiple(of: number5){
        multiplesX.append(y)
        print("\(y) should print 'FizzBuzz'")
    } else if y.isMultiple(of: number3) {
        multiplesX.append(y)
        print("\(y) should print 'Fizz'")
    } else if y.isMultiple(of: number5) {
        multiplesX.append(y)
        print("\(y) should print 'Buzz'")
    } else {
        print("\(y) should print '\(y)'")
    }
}
print(multiplesX)
//Infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 10 {
        break
    }
}

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

let id = Int.random(in: 1...10)
let amount = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I roller a \(roll)")
}
print("Critical hit")




