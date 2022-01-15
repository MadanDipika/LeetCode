/**
* Problem - https://leetcode.com/problems/length-of-last-word/
* Runtime: 0 ms
* Memory Usage: 13.9 MB
* submission - https://leetcode.com/submissions/detail/619838553/
*/

class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0
        
        for ch in s.reversed() {
            if ch != " " {
                count += 1
            } else {
                if count > 0 { break }
            }
        }
        
        return count
    }
}
