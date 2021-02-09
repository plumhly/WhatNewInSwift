/*:
 * subscript可以添加 default 关键字 添加默认值
 */

import Cocoa

var str = "Hello, playground"


struct PliceForce {
    var officers: [String]
    
    subscript(index: Int, default default: String = "plum") -> String {
        if index >= 0 && index < officers.count {
            return officers[index]
        } else {
            return `default`
        }
    }
}

let force = PliceForce(officers: ["Amy", "Jake", "Rosa", "Terry"])
print(force[0])
print(force[5])
