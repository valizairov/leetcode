/*
 392. Is Subsequence - Easy

 Given two strings s and t, return true if s is a subsequence of t, or false otherwise.
 A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).
 
 Example 1:
 Input: s = "abc", t = "ahbgdc"
 Output: true
 
 Example 2:
 Input: s = "axc", t = "ahbgdc"
 Output: false
 */

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var i = 0; var found = 0
        for c in s {
            while i < t.count {
                if c == t[t.index(t.startIndex, offsetBy: i)] {
                    print("found: \(c)")
                    found += 1
                    i += 1
                    break
                }
                i += 1
            }
        }
        return found == s.count
    }
}

Solution().isSubsequence("abc", "ahbgdc") //true
Solution().isSubsequence("axc", "ahbgdc") //false
Solution().isSubsequence("ab", "baab") //true
Solution().isSubsequence("aaaaaa", "bbaaaa") //false



