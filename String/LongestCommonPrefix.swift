/***
* Problem - https://leetcode.com/problems/longest-common-prefix/
* Runtime: 40 ms
* Memory Usage: 14.2 MB
*/

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 1 else { return strs.first ?? "" }
        
        var leastCommon: String = strs.first ?? ""
        
        for i in 1...(strs.count - 1) {
            if i <= (strs.count - 1) {
                leastCommon = strs[i].commonPrefix(with: leastCommon)
                if leastCommon.isEmpty {
                    break
                }
            }
        }
        return leastCommon
    }
}
