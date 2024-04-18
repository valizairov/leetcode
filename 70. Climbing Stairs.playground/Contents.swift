/*
 70. Climbing Stairs - Easy
  
 You are climbing a staircase. It takes n steps to reach the top.
 Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

 Example 1:
 Input: n = 2
 Output: 2
 Explanation: There are two ways to climb to the top.
 1. 1 step + 1 step
 2. 2 steps
 
 Example 2:
 Input: n = 3
 Output: 3
 Explanation: There are three ways to climb to the top.
 1. 1 step + 1 step + 1 step
 2. 1 step + 2 steps
 3. 2 steps + 1 step
  
 */

class Solution {
    func climbStairs(_ n: Int) -> Int {
        guard n > 2 else { return n}
        
        //helper func
        func fillTwos(_ n: Int, _ total: Int) -> [Int] {
            var ar = [Int]()
            var left = total
            for _ in 0..<n {
                ar.append(2)
                left = left - 2
            }
            for _ in 0..<left {
                ar.append(1)
            }
            return ar
        }
        
        func distinctArrays(_ n: Int) -> [[Int]] {
            var perm = [[Int]]()
            for i in 0...n/2 {
                let ar = fillTwos(i, n)
                perm.append(ar)
            }
            //print(perm)
            return perm
        }
        
        //(1)
        var ar = distinctArrays(n)
        for a in ar {
            
        }
        
        func variations(_ ar: [Int]) -> [[Int]] {
            var result = [[Int]]()
            result.append(ar)
            guard ar.count > 0 else { return [[]] }
            guard ar.count > 1 else { return [ar] }
            var ar = ar
            for i in 0..<ar.count {
                for j in i+1..<ar.count {
                    let temp = ar[i]
                    ar[i] = ar[j]
                    ar[j] = temp
                    result.append(ar)
                }
            }
            //print(result)
            return result
        }
        
        //(2)
        let v = variations(ar)
        //let v = variations([1,2,3,4])
        
        
        func distVariations(_ ar: [[Int]]) -> Int {
            var set = Set<String>()
            for a in ar {
                var s = ""
                for e in a {
                    s = s + String(e)
                }
                set.insert(s)
            }
            
            return set.count
        }
        
        return distVariations(v)
    }
}

//Solution().climbStairs(2) // 2
//Solution().climbStairs(5) // 3
//Solution().climbStairs(4) // 5
Solution().climbStairs(6) // 13
