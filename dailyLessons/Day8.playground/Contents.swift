import Cocoa

// assign defualt values for our paramenters

func printTimeTables(for number: Int, end: Int = 8){
    for i in 1...end{
        print("\(i) x \(number) is \( i * number)")
    }
}

printTimeTables(for: 5, end: 12)
printTimeTables(for: 3,)

//triggering errors in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String{
    if password.count < 5 {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 8{
        return "Ok"
    }
    else if password.count < 10 {
        return "Good"
    }
    else{
        return "Very good"
    }
}

let string = "12345"

do{
    let result = try checkPassword(string)
    print("Password rating: \(result)")
}
catch{
    print("There was an error.")
}
