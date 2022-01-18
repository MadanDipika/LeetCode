/**
* Problem - https://leetcode.com/problems/two-sum/
* Runtime: 62 ms
* Memory Usage: 14.4 MB
* Submission - https://leetcode.com/submissions/detail/614967279/
*/


class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        guard nums.count > 1 else { return [] }
        
        //using memorization method
        var dic: [Int: Int] = [:]
        
        for (index, item) in nums.enumerated() {
            let diff = target - item
            
            if let knownIndex = dic[diff], knownIndex != index {
                return [index, knownIndex]
            }
            
            dic[item] = index
            
        }
        
        return []
    }
}
