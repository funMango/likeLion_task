import UIKit

func leapYear() {
    let start_year = 2000
    let last_year = 2100
    
    for year in start_year...last_year {
        if isLeap_second(year) {
            print(year)
        } else if isAverage_year(year) {
            return
        } else if isLeap_first(year) {
            print(year)
        }
    }
}

func isLeap_first(_ year: Int) -> Bool {
    if year % 4 == 0 {
        return true
    }
    return false
}

func isAverage_year(_ year: Int) -> Bool {
    if year % 4 == 0 && year % 100 == 0 {
        return true
    }
    return false
}

func isLeap_second(_ year: Int) -> Bool {
    if year % 4 == 0 && year % 100 == 0 && year % 400 == 0 {
        return true
    }
    return false
}

leapYear()
