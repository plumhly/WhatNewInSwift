
/*:
 可以使用 keypath来做方法
 \Root.value  等价于 (Root) -> Value`
 */



import Cocoa

var str = "Hello, playground"


struct User {
    var name: String
    var age: Int
}

let one = User(name: "1", age: 1)
let two = User(name: "2", age: 2)
let users = [one, two]

users.map(\.name)
