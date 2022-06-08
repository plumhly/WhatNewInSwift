//
//  main.swift
//  WhatNewInSwift
//
//  Created by Plum on 2021/2/8.
//

import Foundation

print("Hello, World!")


func printGreeting(to: String) -> String {
    print("In printGreeting()")
    return "Hello, \(to)"
}

func lazyTest() {
    print("Before lazy")
    lazy var greeting = printGreeting(to: "Paul")
    print("After lazy")
    print(greeting)
}

lazyTest()


protocol Theme {
    
}

struct MyTheme: Theme {
    
}

extension Theme where Self == MyTheme {
    static var myTheme: MyTheme {
        .init()
    }
}
