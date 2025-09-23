import Cocoa

// We will finally be working with loops
let platforms = ["macOS", "iOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift works well on \(os).")
}

// loops in ranges
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
    for j in 1...12{
        print(i,"x",j,"is",i*j)
    }
}

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    // this will only go up to 4 and stop at unlike above where it goes and stops at 5 including it
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")
// basics of how a while loop works

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")

}

print("Youre over 20 buddy")
// while loop uses a random number in range of x...y


let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}


let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            print(multiples)
            break
        }
    }
}

//CHECK POINT #3

// create a fizz buzz program
// loop in range of 1...1000
//dentify multiples of 3, 5 or 3&5
//rpint them out as loop goes

for i in 1...100{
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("Fizz Buzz")
    }
    else if i.isMultiple(of: 3){
        print("Fizz")
    }
    else if i.isMultiple(of: 5){
        print("Buzz")
    }
    else{
        print(i)
    }
}
//DAY 7 now we do functions
func printTimesTable(number: Int, end: Int) {
    for i in 1...end{
        print("\(i) * \(number) is \(i*number)")
    }
}

printTimesTable(number: 3, end: 20)

func rollDice() -> Int{
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


let word1 = "abc"
let word2 = "cba"

func wordCheck(a: String, b: String) -> Bool{
    a.sorted() == b.sorted()
    // there is no need for return key word if its only one line of code here
}

print(wordCheck(a: word1, b: word2))
