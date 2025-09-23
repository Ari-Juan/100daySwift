import Cocoa
/*
//Well be using type annotations for day 4
let playerName: String = "John"
let myLuckyNumber: Int = 21
let pi: Double = 3.14
var isGameOver: Bool = false
// for normal data types

var albums:[String] = ["Thriller","Back in Black","Purple Rain"]
//arrays
var users: [String: String] = ["id": "@buba321"]
//dictionaries
var books: Set<String> = Set(["The Alchemist","To Kill a Mockingbird","1984"])
// type annotations are really used for empty arrays, dics, or sets
// types of ways to write them are the following
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIstyle {
    case light, dark, system
}

var style = UIstyle.light


let birds = ["Mocking Bird", "Blue Jay", "Peregrine Falcon", "Robin", "Owl", "Eagle", "Duck", "Pigeon", "Sparrow", "Chickadee", "Condor", "Hummingbird", "Flamingo", "Cormorant", "Raven", "Peregrine Falcon", "Pigeon", "Sparrow", "Chickadee", "Condor", "Hummingbird", "Flamingo", "Cormorant", "Raven"]

print("Number of Birds:", birds.count)

let uniqueBirds = Set(birds)
print("Unique Birds:", uniqueBirds.count)

//Now we wil work on day 5
// Working with conditions

//if someCondition {
    //print("Do some condition")

// us && as the AND for conditions and || is OR

enum TransportOption {
    case car, train, plane, motorcycle, scooter
}
let  transport = TransportOption.plane
*/

enum weather{
    case sun, rain, cloudy, cold, unknown
}

let foreCast = weather.rain

if foreCast == .sun{
    print("Its sunny outside")
}
else if foreCast == .rain{
    print("Its rainy outside")
}
else if foreCast == .cloudy{
    print("Its cloudy outside")
}
else if foreCast == .cold{
    print("Its cold outside")
}
else {
    print("Machine is broken")
}

enum seasons{
    case spring, summer, fall , winter
}

let station = seasons.fall

switch station {
case .spring:
    print("Spring has begun, bring your umbrella")
case .summer:
    print("Summer has begun, its time to go to the beach")
case .fall:
    print("Fall has begun, its time to go apple picking")
case .winter:
    print("Winter has begun, its time to play in the snow")
}

// fallthrough in my words allow us to print more then one thing once a case matches it will print all the one below , for sequence prints
let day = 3
print("My true love gave to me")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 little pigs")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

let age = 18
let canVote = age >= 18 ? "Yes":"No"
print(canVote)

// ternarys are another way for us to check conditions in swift
let names = ["Juan", "Abel", "Meep", "Pedro"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people in the crew"
print(crewCount
)
