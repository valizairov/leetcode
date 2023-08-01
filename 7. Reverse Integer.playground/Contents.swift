/*
 7. Reverse Integer
 Medium
 
 Given a signed 32-bit integer x, return x with its digits reversed. If reversing x causes the value to go outside the signed 32-bit integer range [-231, 231 - 1], then return 0.

 Assume the environment does not allow you to store 64-bit integers (signed or unsigned).

  

 Example 1:

 Input: x = 123
 Output: 321
 Example 2:

 Input: x = -123
 Output: -321
 Example 3:

 Input: x = 120
 Output: 21
  

 Constraints:

 -231 <= x <= 231 - 1
 */

class Solution {
    func reverse(_ x: Int) -> Int {
        var x = x
        var result = 0
        while x != 0 {
            result = result*10 + x%10
            x /= 10
        }
        return result > Int32.min && result < Int32.max ? result : 0
    }
}

Solution().reverse(123)
Solution().reverse(1534236469) //0
