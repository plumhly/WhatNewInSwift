
/*:
 * 通过 @dynamicMemberLookup  和 subscript(dynamicMember member: String) 生成动态属性
 * 属性、方法 > 动态属性
 
 */


import Cocoa

var str = "Hello, playground"

@dynamicMemberLookup
struct Person {
    subscript(dynamicMember member: String) -> String {
        let properties = ["name": "Taylor Swift", "city": "Nashville"]
        return properties[member, default: ""]
    }
}

let person = Person()
person.name


/// toggle
//var s = true
//s.toggle()
//s
