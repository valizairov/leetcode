/*
 Leetcode.com
  
 58. Length of Last Word - Easy
 
 Given a string s consisting of words and spaces, return the length of the last word in the string.

 A word is a maximal substring consisting of non-space characters only.

 Example 1:

 Input: s = "Hello World"
 Output: 5
 Explanation: The last word is "World" with length 5.
 Example 2:

 Input: s = "   fly me   to   the moon  "
 Output: 4
 Explanation: The last word is "moon" with length 4.
 Example 3:

 Input: s = "luffy is still joyboy"
 Output: 6
 Explanation: The last word is "joyboy" with length 6.

 */


class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        guard !s.isEmpty else { return 0 }
        var i = s.count
        var len = 0
        
        //Start from end, remove all the spaces before finding a first character.
        if s[i-1] == " " {
            while s[i-1] == " " {
                i -= 1
            }
        }
        
        while i > 0 && s[i-1] != " " {
            len += 1
            i -= 1
        }
        return len
    }
}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

Solution().lengthOfLastWord("Hello World") //5
Solution().lengthOfLastWord("   fly me   to   the moon  ") //4
Solution().lengthOfLastWord("luffy is still joyboy") //6
Solution().lengthOfLastWord("a ") //1

