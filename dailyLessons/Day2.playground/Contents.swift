import Cocoa

let number = 120
print(number.isMultiple(of: 3))

// This day we focus on boolean functions and what they do
var something = false
something = !something
print(something)
something = !something
print(something)

something.toggle( )
print(something)
// toggle does the samething as !

//HOW TO JOIN STRINGS
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

print(greeting)

let qoute = "Then he tapped a sign saying \"Believe\" and walked away."
print(qoute)

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and Im \(age) years old."
print(message)

//CHECK POINT 1
//Create celsius temp as constant then convery to Fahrenheit
let celsius = 32.0
let fahrenheit = (celsius * 9)/5 + 32
print("The tempeture is \(celsius)° Celsius or \(fahrenheit)° Fahrenheit")

//Day 3 stuff
//Arrays
var beatles = ["John", "Paul","George", "Ringo"]
var numbers = [1, 2, 3, 4, 5]
print(beatles[0])
beatles.append("Juan")
beatles

var scores = Array<Int>()
// this sets up a specialized array that rn is empty but we can specify that in the paranthesis later on if we want it to have other things
var albums = [String]()
// this is a much simpler way to do what we did above
var characters = ["Arya", "Jon", "Daenerys"]
print(characters.count)

characters.remove(at: 0)
print(characters.count)

characters.removeAll()
print(characters.count)
characters.append("Joe")
characters.append("Emily")
characters.append("Buba")

print(characters.contains("Buba"))
//to see if an rray contians a certain thing

let cities = ["London", "Bogota", "New York"]
print(cities.sorted())
let reversedCities = cities.reversed()
print(reversedCities)

// Now we will be talkng about dictionaries
let employee2 = ["name": "Koppa", "job": "Developer", "age": "18"]
print(employee2["name", default: "Unkown"])
print(employee2["age", default: "Unkwon"])
// the default thing allows us to avoid the warning signs in the code
var heights = [String: Int]()
// this sets up a dictionary with specifications on what the keys and values will be

var actors = Set<String>(["Denzel", "Tom", "Nicolas", "Samuel L"])
print(actors)
actors.insert("Buba")
print(actors)
// the following are sets, we use them to proccess faster than ever

//HOW TO CREATE AND USE ENUMS
enum Weekday{
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
}
var day = Weekday.Monday

//easier way to write the enum
enum Weekend{
    case Saturday, Sunday
}
var endOfWeek = Weekend.Saturday
