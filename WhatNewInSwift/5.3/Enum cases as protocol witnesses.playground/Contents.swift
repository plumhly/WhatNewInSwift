/*:
 * emum 能够将协议的 static var 转换成case
 */

import Cocoa

var str = "Hello, playground"

protocol Defaultable {
    static var defaultValue: Self { get }
}

enum My: Defaultable {
    case one
    case two
    case defaultValue
}

My.defaultValue
