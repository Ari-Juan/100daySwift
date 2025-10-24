import Cocoa

struct Bankaccount {
    private(set) var funds = 0
    // controls access so that it can only be chnaged from inside
    
    mutating func deposit(amount: Int){
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool{
        if funds > amount{
            funds -= amount
            return true
        }
        else{
            return false
        }
    }
}

var account = Bankaccount()
account.deposit(amount:100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money succesfully")
}
else{
    print("Failed to get the money")
}

//account.funds -= 100 sould not be allowed


struct School{
    nonisolated(unsafe) static var studentCount = 0
    // static means we can only use these for School Struct
    
    static func add(student: String){
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)


struct AppData{
    static let version = "1.3 beta 4"
    static let saveFilename = "Setting.json"
    static let homeURL = "https://google.com"
}


//check point 6

struct myCar{
    let model: String
    let numberSeats: Int
    var currentGear: Int
    
    mutating func gearUp() {
        if currentGear < 8{
            currentGear += 1
        }
        else{
            print("Youve reached the maximum amount of gears")
        }
    }
    
    mutating func gearDown(){
        if currentGear < 1{
            print("Minimum gear reached")
        }
        else{
            currentGear -= 1
        }
    }
}
var leCar = myCar(model: "Volvo S60", numberSeats: 5, currentGear: 1)
print(leCar.model)
print(leCar.currentGear)
print("This car has \(leCar.numberSeats) seats")
leCar.gearUp()
leCar.gearUp()
leCar.gearUp()
print(leCar.currentGear)

// We will be creating classes now

class Game{
    var score = 0{
        didSet{
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 20
// below is inheritance tutorial

class Employee{
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    
    func printSummary(){
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee{
    func work(){
        print("Im writing code for \(hours) hours.")
    }
    
    // in order to overide code from parent class we must use the overide key word or else it wonthappen at all
    
    override func printSummary() {
        print("Im a developer and I work around \(hours) a day when I actually show up to the office")
    }
}


final class Manager: Employee{
    // final mean no other class can inhert from it
    //making it final till needed otherwise
    func work(){
        print("Im going to meetings for \(hours) hours.")
    }
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 5)
robert.work()
joseph.work()

let cane = Developer(hours: 8)
cane.printSummary()

//How to add initializers for classes
class vehicle{
    let isElectric: Bool
    
    init(isElectric: Bool){
        self.isElectric = isElectric
    }
}

class Car: vehicle{
    // for classes inherting from others its important to know that to do your initizlier you must include information from the other class
    //else Swift wont let it run
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible:Bool){
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
        //super lets us call on the other class initialzer
    }
}
let teslaX = Car(isElectric: true, isConvertible: false)
// How to copy classes
class User{
    var userName = "Anonymous"
    
    func copy() -> User{
        let user = User()
        user.userName = userName
        return user
    }
}
var user1 = User()
var user2 = user1.copy()
user2.userName = "Taylor"

// How to create a deinitialzer for a class
class User2{
    let id: Int
    
    init(id: Int){
        self.id = id
        print("User \(id): Im alive!")
    }
    
    deinit{
        print("User \(id): Im dead!")
    }
}
// how to work with variables inside classes
class User3{
    var name = "Paul"
    
}
var user = User3()
user.name = "Taylor"
user = User3()
print(user.name)

// check point #7

class Animal{
    let legs: Int
    
    init(legs: Int){
        self.legs = legs
    }
    
    func speak(){
        print("Animal noises!")
    }
}

class Dog: Animal{
    // needs a speak method for this dog
    override func speak() {
        print("Woof Woof Woof")
    }
}

class Cat: Animal{
    //needs a speak method for this cat
    //needs a istamed boolean variable that is initialzed
    
    let isTamed: Bool
    
    init(isTamed: Bool, legs: Int){
        self.isTamed = isTamed
        super.init(legs: legs)
    }
    
    override func speak() {
        print("Meow Meow")
    }
}

class Corgi: Dog{
    //ovveride speak method
    override func speak() {
           print("Woof Woof for Corgi")
       }
}

class Poodle: Dog{
    //override speak method
    override func speak() {
           print("Woof Woof for Poodle")
       }
}

class Persian: Cat{
    //overide speak method
    override func speak() {
           print("Meow Meow for Persian")
       }
}

class Lion: Cat{
    //overide speak method
    override func speak() {
           print("Roar Roar for Lion")
       }
}

let lion1 = Lion(isTamed: false, legs: 4)
let persian1 = Persian(isTamed: true, legs: 4)
let corgi1 = Corgi(legs: 4)
let poodle1 = Poodle(legs: 4)

print(lion1.speak())
print(persian1.speak())
print(corgi1.speak())
print(poodle1.speak())
