
/*:
 * 在类中可以使用 Self。用户重写 class 属性。
 */

import Cocoa

var str = "Hello, playground"

class NetworkManager {
    class var maximumActiveRequests: Int {
        return 4
    }

    func printDebugData() {
        print("Maximum network requests: \(Self.maximumActiveRequests).")
    }
}

class ThrottledNetworkManager: NetworkManager {
    override class var maximumActiveRequests: Int {
        return 1
    }
}
