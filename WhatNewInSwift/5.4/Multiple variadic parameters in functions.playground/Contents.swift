/*:
 * 可以写多个可变参数
 */

import Cocoa

var str = "Hello, playground"

func testParamViriadic(ages: Int..., names: String) {
    print("age: \(ages) names: \(names)")
}
