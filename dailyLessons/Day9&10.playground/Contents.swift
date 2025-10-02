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
