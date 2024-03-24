/*
46. Permutations - Medium
 
Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.

Example 1:
Input: nums = [1,2,3]
Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
 
 
Example 2:
Input: nums = [0,1]
Output: [[0,1],[1,0]]
 
Example 3:
Input: nums = [1]
Output: [[1]]
*/

class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()

        func recursion(_ list: [Int], _ rest: [Int]) {
            for (i, num) in rest.enumerated() {
                var list = list
                var rest = rest

                list.append(num)
                rest.remove(at: i)
                if list.count == nums.count {res.append(list)}
                recursion(list, rest)
            }
        }
        recursion([], nums)
        return res
    }
}

Solution().permute([1,2,3]) // [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
Solution().permute([0,1]) // [0,1],[1,0]
Solution().permute([1]) // [[1]]
