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
