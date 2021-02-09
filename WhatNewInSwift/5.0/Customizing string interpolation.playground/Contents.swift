/*:
 
 * 修改插入值
 
 */

import Cocoa

var str = "Hello, playground"

struct User {
    var name: String
    var age: Int
}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: User) {
        appendInterpolation("My name is \(value.name) and i'm \(value.age)")
    }
}

let user = User(name: "libo", age: 20)
print("User detail: \(user)")
