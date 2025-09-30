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
        throw PasswordError.shot
    }
    
    if password == "12345" {
        
    }
    
}
