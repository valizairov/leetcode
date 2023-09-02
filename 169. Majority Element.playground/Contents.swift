/*
 169. Majority Element - Easy

 Given an array nums of size n, return the majority element.
 The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.
 
 Example 1:
 Input: nums = [3,2,3]
 Output: 3
 
 Example 2:
 Input: nums = [2,2,1,1,1,2,2]
 Output: 2
 */


class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        guard nums.count > 1 else { return nums[0] }
        var dict = [Int: Int]()
        for e in nums {
            if dict[e] != nil {
                dict[e]! += 1
                if dict[e]! > nums.count/2 { return e }
            } else {
                dict[e] = 1
            }
        }
        return 0
    }
}

Solution().majorityElement([3,2,3]) //3
Solution().majorityElement([2,2,1,1,1,2,2]) //2
Solution().majorityElement([1]) //1
