//Optional Chaining
class Person{
    var residence: Residence?
}

class Residence{
    var rooms:[Room] = []
    var numberOfRooms:Int{
        return rooms.count
    }
    subscript(i:Int) -> Room{
        get{
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms(){
        print("這房間的號碼是：\(numberOfRooms)")
    }
    var address:Address?
}

class Room{
    let name:String
    init(name:String){
        self.name = name
    }
}

class Address{
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String?{
        if let buildingNumber = buildingNumber,let street = street{
            return "\(buildingNumber) \(street)"
        }else if buildingNumber != nil{
            return buildingName
        }else{
            return nil
        }
    }
}
let john = Person()
if let roomCount = john.residence?.numberOfRooms{
    print(roomCount)
}else{
    print("residence is nil")
}

let someAddress = Address()
someAddress.buildingName = "29"
someAddress.street = "Acacia Road"
if (john.residence?.address = someAddress) == nil{
    print("給值失敗")
}


/*class Residence{
    var numberOfRooms = 1
}



let john = Person()
//let roomCount = john.residence!.numberOfRooms   會當機

//optional binding方法 檢查residence是不是nil
if let residence = john.residence{
    let roomCount = residence.numberOfRooms
}else{
    print("is nil")
}

//使用 optional chaining + optional binding
if let roomCount = john.residence?.numberOfRooms{
    print(roomCount)
}else{
    print("is nil")
}
*/
