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
    static var studentCount = 0
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
