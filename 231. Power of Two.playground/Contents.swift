/*
 231. Power of Two - Easy

 Given an integer n, return true if it is a power of two. Otherwise, return false.

 An integer n is a power of two, if there exists an integer x such that n == 2x.

 Example 1:
 Input: n = 1
 Output: true
 Explanation: 2^0 = 1
 
 Example 2:
 Input: n = 16
 Output: true
 Explanation: 2^4 = 16
 
 Example 3:
 Input: n = 3
 Output: false

 //Runtime Beats 71.83%of users with Swift
 //Memory Beats 31.69%of users with Swift
 
 */

class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        guard n > 0 else { return false }
        guard n > 1 else { return true }
        var n = n
        while n > 1 {
            print(n)
            if n % 2 != 0 { return false }
            n = n / 2
        }
        if n == 1 { return true }
        return false
    }
}

Solution().isPowerOfTwo(1) //true
Solution().isPowerOfTwo(16) //true
Solution().isPowerOfTwo(3) //false

