/**
* Problem - https://leetcode.com/problems/remove-duplicates-from-sorted-array/
* Runtime: 56 ms
* Memory Usage: 14.8MB
* Submission - https://leetcode.com/submissions/detail/615043108/
*/


class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else { return nums.count }
        
        var index1 = 0
        
        for index2 in 1..<nums.count {
            if nums[index1] != nums[index2] {
                index1 += 1
                nums[index1] = nums[index2]
            }
        }
        return index1 + 1
    }
}
