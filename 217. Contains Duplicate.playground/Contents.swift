/*
 217. Contains Duplicate - Easy
 
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

 Example 1:
 Input: nums = [1,2,3,1]
 Output: true
 
 Example 2:
 Input: nums = [1,2,3,4]
 Output: false
 
 Example 3:
 Input: nums = [1,1,1,3,3,4,3,2,4,2]
 Output: true

 */

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                return true
            } else {
                set.insert(num)
            }
        }
        return false
    }
}

Solution().containsDuplicate([1,2,3,1]) //true
Solution().containsDuplicate([1,2,3,4]) //false
Solution().containsDuplicate([1,1,1,3,3,4,3,2,4,2]) //true

