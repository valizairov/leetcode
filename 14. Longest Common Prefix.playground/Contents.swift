/*
 14. Longest Common Prefix - Easy 
    
 
 Write a function to find the longest common prefix string amongst an array of strings.
 
 If there is no common prefix, return an empty string "".

  

 Example 1:

 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 Example 2:

 Input: strs = ["dog","racecar","car"]
 Output: ""
 Explanation: There is no common prefix among the input strings.
  

 Constraints:

 1 <= strs.length <= 200
 0 <= strs[i].length <= 200
 strs[i] consists of only lowercase English letters.
 */

/*
 find shortest string
 loop and see if it matches, remove one, do again


 // Not complete - search and iterate - not sure how to do that
 
 */
/*
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""
        var len = Array(strs[0]).count
        var searchStr = ""
        strs.map { str in
            print(str)
            if len > Array(str).count {
                len = Array(str).count
                searchStr = str
            }
        }
        
        print(len)
        return result
    }
}
*/

/*
// Using prefix and droplast
 
class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        if strs.isEmpty { return "" }
        var common = strs[0]
        
        for ch in strs {
            while !ch.hasPrefix(common) {
                common = String(common.dropLast())
            }
        }
        return common
    }
}
 */

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var result = ""

        guard strs.count > 1 else {
            return strs.first ?? ""
        }
        
        let end = strs
            .map { $0.count }
            .min()!

        let strs = strs.map { Array($0)}
        
        for i in 0..<end {
            let char = strs[0][i]
            let notFound = false
            for str in strs {
                if str[i] != char {
                    return result
                }
            }
            if notFound == false {
                result += String(char)
            }
        }
        return result
    }
}
//Solution().longestCommonPrefix(["flower","flow","flight"])
Solution().longestCommonPrefix(["cir","car"])
