/*:
 callAsFunction 可以添加参数
 */

import Cocoa

var str = "Hello, playground"

struct User {
    var name: String
    var age: Int
    
    func callAsFunction() -> Int {
        age
    }
    
    func callAsFunction(next: Int) -> Int {
        age + next
    }
}

let user = User(name: "", age: 1)
user()
user(next: 2)
