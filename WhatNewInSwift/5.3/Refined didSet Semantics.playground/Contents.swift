
/*:
 * 如果didSet中没有使用oldValue，将不会设置新值前访问getter。
 * 想要之前的行为方式：1. didSet(oldValue)  2. didSet { _ = oldValue }
 
 
 */

import Cocoa

var str = "Hello, playground"


struct User {
    var name: String {
        didSet {
            print("a")
        }
    }
}


