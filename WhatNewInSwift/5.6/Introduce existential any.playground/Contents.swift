import Cocoa


protocol Vehicle {
    func travel(to destination: String)
}

struct Car: Vehicle {
    func travel(to destination: String) {
        print("I'm driving to \(destination)")
    }
}

do {
    // 静态派发
    let vehicle = Car()
    vehicle.travel(to: "London")

    func travel<T: Vehicle>(to destinations: [String], using vehicle: T) {
        for destination in destinations {
            vehicle.travel(to: destination)
        }
    }

    travel(to: ["London", "Amarillo"], using: vehicle)
}

do {

    //动态派发
    let vehicle2: Vehicle = Car()
    vehicle2.travel(to: "Glasgow")

    func travel2(to destinations: [String], using vehicle: Vehicle) {
        for destination in destinations {
            vehicle.travel(to: destination)
        }
    }

}

do {
    //静态派发
    let vehicle3: any Vehicle = Car()
    vehicle3.travel(to: "Glasgow")

    func travel3(to destinations: [String], using vehicle: any Vehicle) {
        for destination in destinations {
            vehicle.travel(to: destination)
        }
    }
}


/**
 * Type placeholders
 */
var results1 = [
    "Cynthia": [],
    "Jenny": [],
    "Trixie": [],
]

struct Player<T: Numeric> {
    var name: String
    var score: T
}

func createPlayer() -> Player<Int> {
    Player(name: "Anonymous", score: 0)
}


/**
 * Allow coding of non String/Int keyed Dictionary into a KeyedContainer
 */

enum OldSetting: String, Codable {
    case name
    case twitter
}

var dic: [OldSetting: Int] = [.name: 1]
let oldData = try JSONEncoder().encode(dic)
print(String(decoding: oldData, as: UTF8.self))
print(1)


@MainActor class Settings: ObservableObject { }

import SwiftUI
struct OldContentView: View {
    @StateObject private var settings = Settings()

    var body: some View {
        Text("Hello, world!")
    }
}
