//value type -> enumeration structure
//reference type -> class

//實體 subscript
struct TimerTable{
    let mutiplier:Int
    subscript(index:Int) -> Int{
        return index * mutiplier;
    }
}
let threeTimesTable = TimerTable(mutiplier: 3)
threeTimesTable[5]

var numberOfLegs = ["spider":8,"ant":6,"cat":4]
numberOfLegs["spider"]
numberOfLegs["bird"] = 2
numberOfLegs

//type subscript
enum Planet:Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, urauns, netune
    static subscript(n:Int) -> Planet{
        return Planet(rawValue: n)!
    }
}
Planet[4]



