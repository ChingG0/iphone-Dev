//自訂的資料類型

struct  Resolution{
    var Width = 0;
    var Height = 0;
}

//自訂的資料類型
class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name:String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()
print(someResolution.Width)
print(someResolution.Height)
print(someVideoMode.resolution)
print(someVideoMode.interlaced)
print(someVideoMode.frameRate)
print(someVideoMode.resolution.Width)
print(someVideoMode.resolution.Height)
someVideoMode.resolution.Width = 1280
someVideoMode.resolution.Height = 960
someVideoMode.resolution.Width
someVideoMode.resolution.Height

let vga = Resolution(Width: 640, Height: 480)
print(vga)
vga.Width
vga.Height

//value type
//使用指定運算子時，copy一份實體
//let是常數，不可再修改

let hd = Resolution(Width: 1920, Height: 1080)
var cinema = hd
cinema.Width = 2400
cinema.Height = 1800
cinema.Width
hd.Width

//class 是Reference Type
//Remote control

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080p"
tenEighty.frameRate = 25.0

let alsotenEighty = tenEighty
print(alsotenEighty.frameRate)
alsotenEighty.frameRate = 30
alsotenEighty.frameRate = 50

//===識別運算子
alsotenEighty === tenEighty
