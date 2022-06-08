import Cocoa
import Darwin

var greeting = "Hello, playground"


enum LocationError: Error {
    case unknown
}

func getWeatherReadings(for location: String) async throws -> [Double] {
    print(Thread.current)
    switch location {
    case "London":
        return (1...100).map { _ in Double.random(in: 6...26) }
    case "Rome":
        return (1...100).map { _ in Double.random(in: 10...32) }
    case "San Francisco":
        return (1...100).map { _ in Double.random(in: 12...20) }
    default:
        throw LocationError.unknown
    }
}

func fibonacci(of number: Int) -> Int {
    var first = 0
    var second = 1

    for _ in 0..<number {
        let previous = first
        first = second
        second = previous + first
    }

    return first
}

//print(Thread.current)


func printFibSequence() async {
    let task = Task {
        () -> [Int] in
        print(Thread.current)
        var numbers = [Int]()
        
        for i in 0..<50 {
            let result = fibonacci(of: i)
            numbers.append(result)
        }
        
        return numbers
    }
    
    let value = await task.value
    print("count: \(value.count)")
}

func cancelSleepingTask() async {
    let task = Task { () -> String in
        print("Starting")
        try await Task.sleep(nanoseconds: 1_000_000_000)
        try Task.checkCancellation()
        return "Done"
    }

    // The task has started, but we'll cancel it while it sleeps
    task.cancel()

    do {
        let result = try await task.result
        if case let .failure(value) = result {
            print("Result: \(value)")
        }
        
    } catch {
        print("Task was cancelled.")
    }
}

func testTaskgroup() async {
    let result = await withTaskGroup(of: String.self, body: { group -> String in
        group.addTask {
            sleep(1)
            return "1"
        }
        
        group.addTask {
            return "2"
        }
        
        group.addTask {
            "3"
        }
        
        var result = ""
        for await value in group {
            result.append(value)
        }
        
        return result
    })
    
    print(result)
}

async {
//    let readings = try await getWeatherReadings(for: "London")
//    print("Reading count: \(readings.count)")
//    await cancelSleepingTask()
    await testTaskgroup()
}

