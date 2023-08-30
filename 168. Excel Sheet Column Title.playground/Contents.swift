/*
 168. Excel Sheet Column Title - Easy
 
 Given an integer columnNumber, return its corresponding column title as it appears in an Excel sheet.

 For example:
 A -> 1
 B -> 2
 C -> 3
 ...
 Z -> 26
 AA -> 27
 AB -> 28
 ...
  

 Example 1:
 Input: columnNumber = 1
 Output: "A"
 
 Example 2:
 Input: columnNumber = 28
 Output: "AB"
 
 Example 3:
 Input: columnNumber = 701
 Output: "ZY"
 */

class Solution {
    func convertToTitle(_ columnNumber: Int) -> String {
        let letters = [ "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        guard columnNumber > 26 else { return letters[columnNumber-1] }
        let a = letters[columnNumber/26-1]
        let b = letters[columnNumber%26-1]
        return a + b
    }
}

Solution().convertToTitle(1) //A
Solution().convertToTitle(28) //AB
Solution().convertToTitle(701) //ZY
//Solution().convertToTitle(2147483647) //last case not working

