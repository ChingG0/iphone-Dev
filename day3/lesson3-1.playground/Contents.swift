import UIKit
import Darwin

var greeting = "Hello, playground"

let somePoint = (1,1)
    switch somePoint{
        case (0,0):
            print("在原點")
        case (_,0):
            print("在x軸")
        case (0,_):
            print("在y軸")
        case (-2...2,-2...2):
            print("在範圍內")
    default:
        print("在範圍外")
}

let anotherPoint = (2,0)
switch anotherPoint{
case (0,0):
    print("在原點")
case (let x,0):
    print("在x軸上的\(x)")
case (0,let y):
    print("在Y軸上的\(y)")
case let(x,y):
    print("x是:\(x),y是:\(y)")
}

/*
 if optional type == nil
 optional type??    "xxxx"
 
 if let 自訂常數  = optional type
        if
 代表optional type 不是nil
        else
 代表optional type 是nil
 
 guard let 自訂常數 = optional type else
        程式區塊
 代表optional type 是nil
 return    離開function
        向下執行代表
 optional type不是nil
 可以使用自訂常數
 */

//optional binding
func greet(person:[String:String]){
    if let name = person["name"]{
        print(name)
        if let nickname = person["nickname"]{
            print("\(name),\(nickname)")
        }
    }else{
        print("沒有這個key")
        return
    }
}

//guard let 提早離開
func greet1(person:[String:String]){
    guard let name1 = person["name"] else{
        print("沒有這個key")
        return
    }
    guard let nickname1 = person["nickname"] else{
        print("沒有這個key")
        return
    }
    print("\(name1),\(nickname1)")
}


//if let縮寫
func greet2(person:[String:String]){
    if let name = person["name"], let nickname = person["nickname"]{
        print("\(name),\(nickname)")
        }
    else{print("沒有這個key")
        return
    }
}

//版本控制
if #available(iOS 10, macOS 10.12, *){
    //ios10, macOS10.12
}else{
    //ios10, macOS10.12
}

func greet(person: String) -> String{
    let greeting = "Hello, " + person + "!"
    print(greeting)
    return greeting
}

greet(person:"Anna")
greet(person:"David")
