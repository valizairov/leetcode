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

 Approach 1: Use sets - if contains - O(n)
 Approach 2: Use dictionary - if contains - O(n)
 Approach 3: Sort and compare if a[i] == a[i+1] return true - O(n x log n)
 
 */

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        nums.count != Set(nums).count
    }
}

Solution().containsDuplicate([1,2,3,1]) //true
Solution().containsDuplicate([1,2,3,4]) //false
Solution().containsDuplicate([1,1,1,3,3,4,3,2,4,2]) //true

