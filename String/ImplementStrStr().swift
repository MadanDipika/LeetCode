/**
* Problem - https://leetcode.com/problems/implement-strstr/
* Runtime: 484 ms
* Memory Usage: 14.7 MB
*/



class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
       guard !needle.isEmpty else { return 0 }
        guard haystack.count >= needle.count else { return -1 }
                
        let haystackA: [Character] = Array(haystack)
        let needleA: [Character] = Array(needle)
        
        for (i, ch) in haystackA.enumerated() {
            if ch == needleA[0] {
                var matching = true
                for j in 1..<needleA.count{
                    guard i + j < haystackA.count else {
                        return -1
                    }
                    
                    if haystackA[i + j] != needleA[j] {
                        matching = false
                        break
                    }
                }
            
                if matching {
                    return i
                }
            }
        }
        
        return -1
}
}
