class vehicle{
    var currentSpeed = 0.0     //store property
    var description:String{     //computed property(get)
        return "目前速度是\(currentSpeed)"
    }
    
    func makeNoise(){
        
    }

}
let someVehicle = vehicle()
print("VehicleSpeed: \(someVehicle.description)km/hr")

//繼承
class Bicycle:vehicle{
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
bicycle.description

class Tandem:Bicycle{
    var currentNumberOfPassenger = 0
}
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassenger = 2
tandem.currentSpeed = 22.0
tandem.description

//overridden覆寫
class Train:vehicle{
    override func makeNoise() {
        print("Choo Choo")
    }
}
let train = Train()
train.makeNoise()
train.makeNoise()

//覆寫computed屬性
class Car:vehicle{
    var gear = 1
    override var description: String{
        return super.description + " "+"檔位是 \(gear)"
    }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

//覆寫store property(增加property observer功能)
class AutomaticCar:Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")
