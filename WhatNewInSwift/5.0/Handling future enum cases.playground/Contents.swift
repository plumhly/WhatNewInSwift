
/*:
 
 在新加了case 的时候，防止遗漏
 
 */

import Cocoa

var str = "Hello, playground"


enum PasswordError: Error {
    case short
    case simple
    case obvious
    
    //new
//    case old
}

func showOld(error: PasswordError) {
    switch error {
    case .short:
        print("short")
        
    case .simple:
        print("simple")
     
    @unknown default:
        print("default")
    }
}


/// compactMapValues
//let people = [
//    "Paul": 38,
//    "Sophie": 8,
//    "Charlotte": 5,
//    "William": nil
//]
//
//let knownAges = people.compactMapValues { $0 }
//print(knownAges)
