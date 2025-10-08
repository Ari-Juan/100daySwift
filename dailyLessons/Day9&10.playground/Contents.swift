import Cocoa

func greetUser(){
    print("Hi There")
}
greetUser()
var greetCopy = greetUser
greetCopy()

let sayHello = {
    print("HELO")
}
sayHello()
//this is a closure written almost like a function but in a variable

let sayHello2 = { (name: String) -> String in
    "Hello \(name)"
}
// this is how to pass parameters inside

let team = ["Tim", "John", "Mary", "Alex", "Steve"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captianFirst(name1: String, name2: String) -> Bool{
    if name1 == "Steve"{
        return true
    }
    else if name2 == "Steve"{
        return false
    }
    return name1 < name2
}

//let captianSorted = team.sorted(by: captianFirst)
//print(captianSorted)
let captianSorted = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Steve"{
        return true
    }
    else if name2 == "Steve"{
        return false
    }
    return name1 < name2
})
print(captianSorted)
/* another way to wirte closures
 Our code can also be the followign for less clutter let
 
 let captianSorted = team.sorted {a,b in
    if a == "Steve"{
        return true
        }
    else if b == "Steve"{
        return false
        }
    return a < b
    }
 
 print(captianSorted)
 */
let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly)

// accepting functions as parameters
func makeArray(size: Int, using generator: () -> Int) ->[Int]{
    var numbers = [Int]()
    
    for _ in 0..<size{
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}
/*
let rolls = makeArray(size: 50){
    Int.random(in: 1...20)
}
 One way of doing it
 */

func generateNumber() -> Int{
    Int.random(in: 1...20)
}

let rolls = makeArray(size: 50, using: generateNumber)
print(rolls)


//checkpoint 5

let luckyNumber = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let solve = { (_:[Int]) in
    luckyNumber.filter { !$0.isMultiple(of: 2)}
    .sorted()
    .map {print("\($0) is a luck number")}
}

solve(luckyNumber)

// creating stucts

struct Album{
    let title: String
    let artist: String
    let year: Int
    
    func printSummary(){
        print("\(title) (\(year)) by \(artist)")
    }
}


// EXC #2

struct Employee{
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int){
        // mutating is need becuase we are changing somehting about the struct, bc all structs make constants
        if vacationRemaining > days{
           vacationRemaining -= days
            print("Im going on Vacation!")
            print("Days remaining: \(vacationRemaining)")
        }
        else{
            print("Oops! There aren't enough days remaining")
        }
    }
}

var archer = Employee(name: "Sterlng Archer", vacationRemaining: 20)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

//dynamic values in Structs
struct Employees{
    let name: String
    var vacationAllocated = 20
    var vacationTaken = 0
    
    var vacationRemaining: Int{
        get{
            vacationAllocated - vacationTaken
        }
        set{
            vacationAllocated = vacationTaken + newValue
        }
    }
}
        
var jarcher = Employees(name: "Sterling Archer", vacationAllocated: 20,)
jarcher.vacationTaken += 4
jarcher.vacationRemaining = 5
print(jarcher.vacationAllocated)

struct Game{
    var score = 0{
        didSet{
            print("Score is now \(score)")
            //udates our score and prints them out
        }
    }
}
var game = Game()
game.score += 4
game.score += 2
game.score -= 3
game.score += 6

struct App{
    var contacts = [String](){
        willSet{
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet{
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Sterling")
app.contacts.append("Sam")
app.contacts.append("John")
