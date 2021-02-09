import Cocoa

var str = "Hello, playground"

enum MyStatus {
    case one
    case two
}

var s: MyStatus? = .one

func doStatus(s: MyStatus?) {
    switch s {
    case .one:
        print("s")
        
    default:
        print("default")
    }
}

doStatus(s: s)
