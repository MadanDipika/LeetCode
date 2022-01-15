/**
* Problem - https://leetcode.com/problems/longest-substring-without-repeating-characters/
* Runtime: 19 ms
* Memory Usage: 14.1 MB
* submission - https://leetcode.com/submissions/detail/617177016/
*/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
     var length = 0
        var array: [Character] = []
            
        for char in s { 
           if array.contains(char), let index = array.firstIndex(of: char) {
               array.removeSubrange(0...index)
           }
            
            array.append(char)
            length = max(length, array.count)
        }
        
        return length
    }
}
