/**
* Problem - https://leetcode.com/problems/valid-parentheses/
* Runtime: 6 ms
* Memory Usage: 14.2 MB
*/

class Solution {
    
    func isValid(_ s: String) -> Bool {
        let pair: Dictionary<Character, Character> = ["(":")", "[":"]", "{":"}"]
        var stack: [Character] = []
        
        for char in s {
            if let open = pair[char] {
                stack.append(open)
            } else {
                guard let last = stack.popLast() else { return false }
                
                if last != char {
                    return false
                }
            }
        }
        
        return stack.isEmpty
    }
}
