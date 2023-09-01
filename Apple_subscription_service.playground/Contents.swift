import Foundation

protocol Observer {
    var id: String { get set }
    func update(message: String)
}

protocol Publisher {
    var observers: [Observer] { get set }
    func subscribe(observer: Observer)
    func unSubscribe(observer: Observer)
    func notify(message: String)
}

class XStore: Publisher {
    var observers: [Observer] = []
            
    init(observers: [Observer]) {
        self.observers = observers
    }

    func subscribe(observer: Observer) {
        observers.append(observer)
    }

    func unSubscribe(observer: Observer) {
        observers = observers.filter { $0.id != observer.id }
    }

    func notify(message: String) {
        for observer in observers {
            observer.update(message: message)
        }
    }
}

struct Customer: Observer {
    var id: String

    init(id: String) {
        self.id = id
    }

    func update(message: String) {
        print("\(id)님 \(message)")
    }
}

let xStore = XStore(observers: [])
let cheolsu = Customer(id: "철수")
let younghee = Customer(id: "영희")
let mina = Customer(id: "미나")
let minsu = Customer(id: "민수")

// 구독
xStore.subscribe(observer: cheolsu)
xStore.subscribe(observer: younghee)
xStore.subscribe(observer: minsu)
xStore.notify(message: "iPhone 15 출시!")

// 구독취소
xStore.unSubscribe(observer: younghee)
xStore.unSubscribe(observer: minsu)
xStore.notify(message: "iPad Pro 입고!")
