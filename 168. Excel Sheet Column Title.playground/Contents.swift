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


class Solution2 {
    func convertToTitle(_ columnNumber: Int) -> String {
        // A-Z 1-26 mapping
        // keep divinging the number until number becomes less than 26
        // keep storing the reminder in the stack
        // start building string by poping stack
        var stack:[Int] = []
        var divisor = columnNumber
        while divisor > 0 {
            let reminder = divisor % 26
            if reminder > 0 {
                stack.append(reminder)
            } else {
                stack.append(26)
                divisor -= 26
            }
            
            divisor /= 26
        }
        var result = ""
        while !stack.isEmpty {
            let last = stack.removeLast()
            result += titleFor(last)
        }
        return result
    }
    func titleFor(_ num: Int) -> String {
        // A starts with 65
        "\(Unicode.Scalar(num + 64)!)"
    }
}

//146 -> 5.6
//701 -> ZY // 26.96
//702 -> ZZ // 27
//703 -> AAA //27.03

//Solution().convertToTitle(1) //A
//Solution().convertToTitle(28) //AB
//Solution().convertToTitle(146) //EP
//Solution2().convertToTitle(701) //ZY
//Solution().convertToTitle(702) //ZZ
//Solution().convertToTitle(703) //AAA
//Solution().convertToTitle(2147483647) //last case not working


