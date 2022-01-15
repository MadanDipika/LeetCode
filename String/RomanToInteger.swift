/***
* Problem - https://leetcode.com/problems/roman-to-integer/
* Runtime: 84 ms
* Memory Usage: 14.5 MB
*/


extension String {
    subscript(index: Int) -> Character {
        return self[self.index(startIndex, offsetBy: index)]
    }
}

class Solution {
    let romanDic: Dictionary<Character, Int> = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    func romanToInt(_ s: String) -> Int {
        var value = 0
        var skipNext = false
        for (i, c) in s.enumerated() {
            if !skipNext, let currentValue = romanDic[c] {
                let nextValue = s.count > (i + 1) ? romanDic[s[i + 1]] ?? 0: 0
                print(value, currentValue, nextValue)
                if currentValue >= nextValue {
                    skipNext = false
                    value += currentValue
                } else {
                    skipNext = true
                    value += (nextValue - currentValue)
                }
            } else {
                skipNext = false
            }
        }
        return value
    }
}
