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
        let base = 26
        var columnNumber = columnNumber
        var res = ""

        guard columnNumber > base else { return letters[columnNumber-1] }
        
        while columnNumber >= base {
            print(columnNumber)
            res += letters[columnNumber % base]
            columnNumber = columnNumber/base
        }
        res = res + letters[columnNumber]
        print("------------------")
        return res
    }
}

//146 -> 5.6
//701 -> ZY // 26.96
//702 -> ZZ // 27
//703 -> AAA //27.03

//Solution().convertToTitle(1) //A
//Solution().convertToTitle(28) //AB
//Solution().convertToTitle(146) //EP
Solution().convertToTitle(701) //ZY
//Solution().convertToTitle(702) //ZZ
//Solution().convertToTitle(703) //AAA
//Solution().convertToTitle(2147483647) //last case not working

