/*:
 
 * enum 支持比较，即使包含关联属性。
 * 后面的大于前面
 
 */

import Cocoa

var str = "Hello, playground"


enum Size: Comparable {
    case one
    case two
    case three
}

let one = Size.one
let two = Size.two

if one < two {
    print("small")
} else {
    print("large")
}
