/*
 139. Word Break - Medium 
  
 Given a string s and a dictionary of strings wordDict, return true if s can be segmented into a space-separated sequence of one or more dictionary words.
 Note that the same word in the dictionary may be reused multiple times in the segmentation.

 Example 1:
 Input: s = "leetcode", wordDict = ["leet","code"]
 Output: true
 Explanation: Return true because "leetcode" can be segmented as "leet code".
 
 Example 2:
 Input: s = "applepenapple", wordDict = ["apple","pen"]
 Output: true
 Explanation: Return true because "applepenapple" can be segmented as "apple pen apple".
 Note that you are allowed to reuse a dictionary word.
 
 Example 3:
 Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"]
 Output: false
 
 
 Approach 1:
    Use dynamic programming
 Approach 2:
    Backtracking. This is 2^n time complexity
 Approach 3:
    Linear approach using a hash table
 
 */

class Solution {
    func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
        return true
    }
}

Solution().wordBreak("leetcode", ["leet","code"]) //true
Solution().wordBreak("applepenapple", ["apple","pen"]) //true
Solution().wordBreak("catsandog", ["cats","dog","sand","and","cat"]) //false

