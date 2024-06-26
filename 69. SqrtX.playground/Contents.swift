/*
 69. Sqrt(x) - Easy
    
 Given a non-negative integer x, return the square root of x rounded down to the nearest integer. The returned integer should be non-negative as well.

 You must not use any built-in exponent function or operator.
 For example, do not use pow(x, 0.5) in c++ or x ** 0.5 in python.

 Example 1:
 Input: x = 4
 Output: 2
 Explanation: The square root of 4 is 2, so we return 2.
 
 Example 2:
 Input: x = 8
 Output: 2
 Explanation: The square root of 8 is 2.82842..., and since we round it down to the nearest integer, 2 is returned.
  
 */

class Solution {
    func mySqrt(_ x: Int) -> Int {
        guard x > 0 else { return 0 }
        guard x > 1 else { return 1 }
        
        for i in 1..<UInt32.max {
            if i*i > x {
                return Int(i-1)
            }
        }
        return 0
    }
}

Solution().mySqrt(4) //2
Solution().mySqrt(8) //2

