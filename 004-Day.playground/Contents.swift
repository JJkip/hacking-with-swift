import UIKit

//For Loops
/*with range*/
let count = 1...10
for number in count {
    print("Number is \(number)")
}
/*with arrays*/
let albums = ["Red","1989","Reputation"]
for album in albums{
    print("\(album) in on apple music")
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

while false {
    print("This is false")
}

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

//Infinite loops
var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 10 {
        break
    }
}






