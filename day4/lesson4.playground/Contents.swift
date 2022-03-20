//無參數
func sayHelloWorld() ->String{
    return "Hello, World"
}
sayHelloWorld()

//多個參數名稱的func
func greetAgain(person:String) -> String{
    return "Hello again," + person + "!"
}
greetAgain(person: "Anna")

//回傳參數,多型
func greet(person: String) -> String{
let greeting = "Hello"+" "+person+"!"
print(greeting)
return greeting
}
greet(person:"David")

func greet() ->String{
    return "Hello !World"
}
greet()

func greet(person:String, alreadyGreeted:Bool) ->String{
    if alreadyGreeted{
        return greetAgain(person: person)
    }else{
        return greet(person:person)
    }
}
greet(person:"Time",alreadyGreeted: true)

//沒有return的function
func greet(p:String){
    print("Hello, \(p)")
}
greet(p: "Anna")

func minMax() -> (min:Int,max:Int,s:String){
    return (10,20,"tuple")
}
/*
let bounds = minMax()
bounds.min
bounds.max
bounds.s
*/
//function也可以檢查錯誤
func minMax(num:Int) -> (min:Int,max:Int)?{
    if num == 10{
        return nil
    }
    return (10,20)
}
//使用minMax檢查是不是nil
if minMax(num:10) == nil{
    print("return nill")
}
//使用optional binding
if let bounds = minMax(num:10){
    print(bounds.min)
    print(bounds.max)
}else{
    print("return nil")
}

let bounds = minMax(num: 10 ) ?? (10,10)
print(bounds.min)
print(bounds.max)

//提早離開
func simpleFun(){
    guard let bounds = minMax(num: 10) else{
        print("return nil")
        return
    }
    print(bounds.max)
    print(bounds.min)
}
simpleFun()
//不同的引述和參數名稱
func someFunction(argumentLabel parameterName:Int){
    print(parameterName)
}
someFunction(argumentLabel: 100)

//
func greet(person:String,from hometown:String) -> String{
    return "\(person) comes from \(hometown)"
}
greet(person:"David",from:"Taiwan")
print(greet(person:"David",from:"Taiwan"))
//
func someFunction(_ firstparameterName:Int, secondparameterName:Int){
}
someFunction(1, secondparameterName: 2)
