
/*:
 * 把规则放在wrapper中
 */

import Cocoa

var str = "Hello, playground"

@propertyWrapper
struct LessThanThree {
    
    private var number: Int
    
    var wrappedValue: Int {
        get {
            return number
        }
        
        set {
            number = min(newValue, 3)
        }
    }
    
    init() {
        number = 0
    }
}


struct My {
    @LessThanThree var age: Int
}

var my = My()
my.age = 2
print(my.age)

my.age = 10
print(my.age)
