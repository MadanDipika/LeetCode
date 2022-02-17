/**
* Problem - https://leetcode.com/problems/binary-search/
* Runtime: 274 ms
* Memory Usage: 14.6MB
* Submission - https://leetcode.com/submissions/detail/643352713/
*/


class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var start = 0
        var end = nums.count - 1
        
        while start <= end {
            let mid = start + (end - start)/2
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target{
                start = mid + 1
            } else {
                end = mid - 1
            }
        }
        
        return -1
    }
}
