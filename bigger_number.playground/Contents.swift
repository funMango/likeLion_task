import UIKit

func closeTo10(_ first: Int, _ second: Int) -> Int {
    let first_value = abs(10 - first)
    let second_value = abs(10 - second)
    
    if first_value > second_value {
        return second
    } else if second_value > first_value {
        return first
    } else {
        return first
    }
}

print( closeTo10(2, 7))
print( closeTo10(7, 13))
print( closeTo10(8, 5))
print( closeTo10(2, 13))


