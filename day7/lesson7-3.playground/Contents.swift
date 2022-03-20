/*
struct Farenheit{
    var temp:Double
    init(){
        temp = 32.0
    }
}
var f = Farenheit()
f.temp
*/

//default Property Value
struct Farenheit{
    var temp = 32.0
    var temp1:Int = {
        return 32
    }()
}

//有參數的初始化者
struct Celsius{
    var tempInCelcius:Double
    init(fromFarenheit farenheit:Double){
        tempInCelcius = (farenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin:Double){
        tempInCelcius = kelvin - 273.15
    }
    //沒有引述名稱的init
    init(_ celsius:Double){
        tempInCelcius = celsius
    }
}
let boilingPointOfWater = Celsius(fromFarenheit: 212.0)
boilingPointOfWater.tempInCelcius

let freezingPointOfWater = Celsius(fromKelvin: 273.15)
freezingPointOfWater.tempInCelcius

let bodyTemp = Celsius(37.0)

struct Color{
    let red, green, blue:Double
    init(red:Double, green:Double, blue:Double){
        self.red = red;
        self.green = green;
        self.blue = blue
    }
    init(white:Double){
        red = white
        green = white
        blue = white
    }
}
let magenta = Color(red: 1.0, green: 0.0, blue:0.0)
let hallfgrey = Color(white: 0.5)

class SurveyQuestion{
    var text:String
    var response:String?
    init(text:String){
        self.text = text
    }
    
    func ask(){
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do u like Cheese?")
cheeseQuestion.response = "Yes, I do like cheese"

//default initializer
//memberwise initializer
class ShoppingListItem{
    var name:String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()
struct Size{
    var width = 0.0, height = 0.0
}
let twoBytwo = Size(width: 2.0, height: 2.0)

struct Point{
    var x = 0.0, y = 0.0
}
struct Rect{
    var origin = Point()
    var size = Size()
    
    init(origin:Point, size:Size){
        self.origin = origin
        self.size = size
    }
    init(center:Point, size:Size){
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        //origin = Point(x: originX, y: originY)
        //self.size = size
        self.init(origin: Point(x: originX, y:originY), size: size)
    }
}
