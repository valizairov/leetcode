/*
 9. Palindrome Number
 Given an integer x, return true if x is a palindrome, and false otherwise.

 Example 1:
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 
 Example 2:
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 
 Example 3:
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
  
 Constraints: -231 <= x <= 231 - 1
 Follow up: Could you solve it without converting the integer to a string?
 */
/*
 My solution:
 
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x > -1 else { return false }
        guard x > 9 else { return true }
        let arr = Array(String(x))
        for i in 0..<arr.count/2 {
            print(i, arr.count-i-1)
            if arr[i] != arr[arr.count-i-1] {
                return false
            }
        }
        return true
    }
}
*/

 //One liner:
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        return String(String(x).reversed()) == String(x)
    }
}

import XCTest
class Tests: XCTestCase {
    private let solution = Solution()
    
    func test0() {
        let value = solution.isPalindrome(121)
        XCTAssertTrue(value)
    }
}

Solution().isPalindrome(121)
Solution().isPalindrome(1221)
Solution().isPalindrome(11)
Solution().isPalindrome(1)
Solution().isPalindrome(123456)
