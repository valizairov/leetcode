/*
 5. Longest Palindromic Substring
 Medium
 25.8K
 1.5K
 Companies
 Given a string s, return the longest
 palindromic
  
 substring
  in s.

  

 Example 1:

 Input: s = "babad"
 Output: "bab"
 Explanation: "aba" is also a valid answer.
 Example 2:

 Input: s = "cbbd"
 Output: "bb"
  

 Constraints:

 1 <= s.length <= 1000
 s consist of only digits and English letters.
 */

class Solution {
    func longestPalindrome(_ s: String) -> String {
        let len = s.count, arr = Array(s)
        if len <= 1 { return s }
        var lhs = 0, rhs = 0, dp = Array(repeating: Array(repeating: false, count: len), count: len)
        for i in 1..<len {
            for j in 0..<i where arr[j] == arr[i] && (dp[j+1][i-1] || i - j <= 2) {
                dp[j][i] = true
                if i - j > rhs - lhs {
                    lhs = j
                    rhs = i
                }
            }
        }
        return String(arr[lhs...rhs])
    }
}

//Input: s = "babad"
//Output: "bab"
let result = Solution().longestPalindrome("babad")
