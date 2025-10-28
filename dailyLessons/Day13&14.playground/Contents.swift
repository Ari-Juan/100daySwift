import Cocoa
//Day13 Protocol

protocol Vehcile {
    var name: String { get }
    var currentPassangers: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehcile {
    let name = "Car"
    var currentPassangers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance/50
    }
    
    func travel(distance: Int) {
        print("Im driving \(distance)km")
    }
    
    func openSunroof(){
        print("Its a nice day!")
    }
}

struct Bicycle: Vehcile{
    let name = "Bicycle"
    var currentPassangers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance/10
    }
    func travel(distance: Int) {
        print("Im cycling \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehcile){
    if vehicle.estimateTime(for: distance) > 100{
        print("Thats too slow! Ill try a diffrent vehicle")
    }
    else{
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehcile], distance: Int){
    for vehicle in vehicles{
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours totravel \(distance)km")
    }
}

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 100, using: bike)

// How to use opaque return types
func getRandomNumber() -> some Equatable {
    //Int.random(in: 1...6)
    // some Equatable allows us to edit code later without losing functionality
    //swift knows what is really being returned but not us
    Double.random(in: 1...6 )
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomNumber() == getRandomNumber())

//How to create extensions
// how to create and use protocol extensions
extension Collection{
    var isNotEmpty: Bool{
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Yoshi", "Peach"]

if guests.isNotEmpty{
    print("Guest count: \(guests.count)")
}

protocol Person{
    var name: String{get}
    func sayHello()
}

extension Person{
    func sayHello(){
        print("Hi, Im \(name)")
    }
}

struct Employee: Person{
    let name: String
}
let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

// Check point 8

// Protocol for building
protocol Building{
    var propertyType: String {get set}
    var sellerName: String {get set}
    var totalRooms: Int {get set}
    var cost: Int {get set}
    func summary()
}

extension Building{
    func summary(){
        print("""
            /// SUMMARY ///
            Building Type: \(propertyType)
            Number of Rooms: \(totalRooms)
            Cost of Property: \(cost)
            Agent: \(sellerName)
            """)
    }
}

struct House: Building{
    var propertyType: String
    var totalRooms: Int
    var cost: Int
    var sellerName: String
}

struct Office: Building{
    var propertyType: String
    var totalRooms: Int
    var cost: Int
    var sellerName: String
}

var house1 = House(propertyType: "Mid Century Modern", totalRooms: 8, cost: 750000, sellerName: "Sally Agents")
var office1 = Office(propertyType: "High Ceiling", totalRooms: 12, cost: 1200000, sellerName: "John Agents")

house1.summary()
office1.summary()
// How many room
//cost of property in INt
//Name of estate agent selling
//method for printing the sales summary

//TWO structs House and Office


//Day 14
// How to handle missing data with optionals

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposites = opposites["Peach"]

if let marioOpposite = opposites["Mario"]{
    //if let will unwrape the data to see if it has a value
    // if it foes it will assign it to the let variable
    print("Mario opposite is \(marioOpposite)")
}

var username: String? = nil

if let unwrappedUsername = username{
    print("We got a user: \(unwrappedUsername)")
}else{
    print("The optional was emtpy")
}

#imageLiteral(resourceName: "Screenshot 2025-10-27 at 2.34.13 PM.jpg")

func square(number: Int)-> Int{
    number * number
}

var number: Int? = nil

if let number = number{
   print(square(number: number))
    // the number here next to let is only for this opional
    // wont work anywhere else in the code
    
}

// How to unwrap optionaals with gaurd

func printSqaure(of number: Int?){
    guard let number = number else{
        // guard let will only run if the optionals does not
        // have a value
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

// How to unwrap optionals with nil coalescing
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Paris",
    "Discovery": "Soneva",
    "Defiant": "Crusher"
]
let new = captains["Serenity"] ?? "N/A"
// let new = captains["Serenity", default: "N/A"
//is also another way to write it
// ?? means that if no value is returned N/A will be saved to new

let tvShows = ["Game of Thrones", "Rick and Morty", "The Mandalorian"]
let favorite = tvShows.randomElement() ?? "None"

struct Book{
    let title: String
    let authors: String?
}

let book = Book(title: "Beowulf", authors: nil)
let authors = book.authors ?? "Unknown"
print(authors)
