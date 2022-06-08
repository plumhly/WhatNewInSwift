import Cocoa

var greeting = "Hello, playground"

actor SafeCollector {
    var deck: Set<String>

    init(deck: Set<String>) {
        self.deck = deck
    }

    func send(card selected: String, to person: SafeCollector) async -> Bool {
        guard deck.contains(selected) else { return false }

        deck.remove(selected)
        await person.transfer(card: selected)
        return true
    }

    func transfer(card: String) {
        deck.insert(card)
    }
}

/**
 *Actors 和 class 的区别
 *相同之处：
 *  a. 都是引用类型
 *  b. 可以包含方法、属性、构造函数、下标访问
 *  c. 可以遵守协议、可以泛型化
 *  d. static修饰的属性和方法表现相同
 *
 *不同之处：
 * a. Actors不支持继承
 * b. 所有的Actors隐式遵守Actor协议，其他类型不遵守Actor协议
 */

//只有在主线程调用

async {
    await printOtherThread()
    await printMainThread()
}

func printOtherThread() async {
    print(Thread.current)
}

@MainActor
func printMainThread() async {
    print(Thread.current)
}



