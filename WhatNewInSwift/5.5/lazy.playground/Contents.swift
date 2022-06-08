import Cocoa


var greeting = "Hello, playground"

func hello() -> String {
    print("hello")
    return "hello"
}

//func lazyTest() {
//    lazy var s = hello()
//    print(s)
//}

//lazyTest()
//lazyTest()

//func printGreeting(to: String) -> String {
//    print("In printGreeting()")
//    return "Hello, \(to)"
//}
//
//func lazyTest() {
//    print("Before lazy")
//    lazy var greeting = printGreeting(to: "Paul")
//    print("After lazy")
//    print(greeting)
//}

//lazyTest()

#if swift(>=5.6)
print("5.6")
#endif
