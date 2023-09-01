import UIKit

var memo = [Int: Int]()

func Fibonacci(_ num: Int) -> Int {
    if let saved_number = memo[num] {
        return saved_number
    }
    
    if num == 1 || num == 2 {
        return 1
    }
    
    let result = Fibonacci(num - 1) + Fibonacci(num - 2)
    memo[num] = result
    return result
}

print(Fibonacci(55))
