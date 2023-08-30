/*
 189. Rotate Array - Medium

 Given an integer array nums, rotate the array to the right by k steps, where k is non-negative.
 
 Example 1:
 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 
 Example 2:
 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation:
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]
 */

class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        guard nums.count > 1 else { return }
        let k = k % nums.count
        var array1 = [Int]()
        var array2 = [Int]()
        for i in (nums.count - k)..<nums.count {
            array1.append(nums[i])
        }
        for i in 0..<nums.count-k {
            array2.append(nums[i])
        }
        nums = array1 + array2
    }
}

var array1 = [1,2,3,4,5,6,7]
Solution().rotate(&array1, 3) // [5,6,7,1,2,3,4]
//print(array1)

var array2 = [-1,-100,3,99]
Solution().rotate(&array2, 2)  // [3,99,-1,-100]
//print(array2)

var array3 = [1,2]
Solution().rotate(&array3, 3)  // [2,1]
print(array3)
