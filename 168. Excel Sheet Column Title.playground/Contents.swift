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
        let letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        var res = ""
        for i in 0..<columnNumber/26 {
            res = res + letters[i]
        }

        
        return ""
    }
}
