
/*:
 
 * 通过some来让编译器比较同类型
 
 */

import Cocoa

var str = "Hello, playground"

protocol Fighter {}

struct XWing: Fighter {}

struct YWing: Fighter {}

func launchFighter() -> some Fighter {
    return XWing()
}

let red4 = launchFighter()
let red5 = launchFighter()

//print(red5 == red4)

func makeInt() -> some Equatable {
    return 1
}

func makeString() -> some Equatable {
    return "1"
}

/**
 Binary operator '==' cannot be applied to operands of type 'some Equatable' (result of 'makeInt()') and 'some Equatable' (result of 'makeString()')
 */
let one = makeInt()
let two = makeString()
//print(one == two)
