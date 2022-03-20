//定義自訂的列舉
enum CompassPoint{
    case north
    case south
    case east
    case west
}

//利用推測，使用列舉
var directionToHead = CompassPoint.north
directionToHead = .east

enum Planet{
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

switch directionToHead{
    case .north:
        print("北")
    case .south:
        print("南")
    case .east:
        print("東")
    case .west:
        print("西")
}


var somePlanet = Planet.earth
somePlanet = .mars
switch somePlanet{
case .earth:
    print("地球")
default:
    print("地球以外")
}

//建立可一個一個被讀取值的列舉-----protocol
enum Beverage:CaseIterable{
    case coffee, tea, juice
}
//Beverage.allCases
let numberofChoice = Beverage.allCases.count
for beverage in Beverage.allCases{
    print(beverage)
}

//case元素有關的值
enum Barcode{
    case upc(Int, Int, Int, Int)
    case qrcode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
   // productBarcode = .qrcode("https//google.com")

switch productBarcode{
    case let .upc( numberSystem, manufactory, product, check):
        print("\(numberSystem)-\(manufactory)-\(product)-\(check)")
    case let .qrcode(productcode):
        print(productcode)
}

//case元素，對應原生值(固定值)rawValue
enum Planet2:Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

Planet2.jupiter.rawValue

enum Compasspoint:String{
    case north, south, east, west
}
Compasspoint.north.rawValue

let possiblePlanet = Planet2(rawValue: 1)
print(possiblePlanet!)
