import Cocoa

var greeting = "Hello, playground"


do {
    func fetchWeatherHistory(completion: @escaping ([Double]) -> Void) {
        DispatchQueue.global().async {
            let results = (1...100_000).map { _ in
                Double.random(in: -10...30)
            }
            completion(results)
        }
    }

    func calculateAverageTemperature(for records: [Double], completion: @escaping (Double) -> Void) {
        // Sum our array then divide by the array size
        DispatchQueue.global().async {
            let total = records.reduce(0, +)
            let average = total / Double(records.count)
            completion(average)
        }
    }

    func upload(result: Double, completion: @escaping (String) -> Void) {
        // More complex networking code; we'll just send back "OK"
        DispatchQueue.global().async {
            completion("OK")
        }
    }

    fetchWeatherHistory { records in
        calculateAverageTemperature(for: records) { average in
            upload(result: average) { response in
                print("Server response: \(response)")
            }
        }
    }
}

do {
    func fetchHistory() async -> [Double] {
        (1...100_000).map { _ in Double.random(in: -10...30)}
    }
    
    func calculateAverageTemperature(for records: [Double]) async -> Double {
        let total = records.reduce(0, +)
        let average = total / Double(records.count)
        return average
    }

    func upload(result: Double) async -> String {
        "OK"
    }
    
    func processWeather() async {
        let records = await fetchHistory()
        let average = await calculateAverageTemperature(for: records)
        let response = await upload(result: average)
        print("Server response: \(response)")
    }
}

/**
 规则：
 1. 同步方法不可调用异步
 2.异步可以调用同步和异步
 3.同步或者异步有相同的方法名，根据上下文判断。（同步环境调用同步，异步环境调用异步）
 */
