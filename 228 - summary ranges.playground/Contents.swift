/* 
 228. Summary Ranges 
 Easy
 3.4K
 1.8K
 Companies
 You are given a sorted unique integer array nums.

 A range [a,b] is the set of all integers from a to b (inclusive).

 Return the smallest sorted list of ranges that cover all the numbers in the array exactly. That is, each element of nums is covered by exactly one of the ranges, and there is no integer x such that x is in one of the ranges but not in nums.

 Each range [a,b] in the list should be output as:

 "a->b" if a != b
 "a" if a == b
  

 Example 1:

 Input: nums = [0,1,2,4,5,7]
 Output: ["0->2","4->5","7"]
 Explanation: The ranges are:
 [0,2] --> "0->2"
 [4,5] --> "4->5"
 [7,7] --> "7"
 Example 2:

 Input: nums = [0,2,3,4,6,8,9]
 Output: ["0","2->4","6","8->9"]
 Explanation: The ranges are:
 [0,0] --> "0"
 [2,4] --> "2->4"
 [6,6] --> "6"
 [8,9] --> "8->9"
  

 Constraints:

 0 <= nums.length <= 20
 -231 <= nums[i] <= 231 - 1
 All the values of nums are unique.
 nums is sorted in ascending order.
 */

/*
 //My partial solution, is not working with the last part of it
class Solution {
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        var result = [String]()
        var first = nums[0]
        var last = nums[0]
        for i in 1..<nums.count {
            print("--\(nums[i])")
            if nums[i] - nums[i-1] == 1 && i != nums.count {
                last = nums[i]
            } else {
                print("break at: \(nums[i]), FL: \(first),\(last)")
                let e = "\(first) -> \(last)"
                result.append(e)
                first = nums[i]
                last = nums[i]
            }
        }
        return result
    }
}
//let e = "\(first) => \(last)"
//result.append(e)
let nums = [0,1,2,4,5,7]
let result = Solution().summaryRanges(nums)
//Output: ["0->2","4->5","7"]
*/

final class Solution {
    /// This structure holds the range of numbers, with left and right representing the start and end of the range respectively. It also includes helper computed properties to convert left and right to strings, and to format the string representation of the range. The assign(_:) function is used to reset the left and right values to a new number.
    struct NumRange: CustomStringConvertible {
        var left: Int
        var right: Int

        var sleft: String { "\(left)" }
        var sright: String { "\(right)" }
        var description: String { sleft + "->" + sright }

        mutating func assign(_ val: Int) {
            left = val
            right = val
        }
    }

    @inline(__always)
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        var ranges = [String]()
        // Keep track of the current range
        var range = NumRange(left: nums[0], right: nums[0])

        // This function is used to generate the string representation of the current range and add it to the ranges array. If left and right of the range are the same, it simply adds the string representation of left, otherwise it adds the range in the left->right format.
        @inline(__always)
        func resolve() {
            ranges += [range.left == range.right ? range.sleft : range.description]
        }

        // Iterate over the input array from the second element onwards
        for num in nums[1...] {
            // For each number, it check if it's a consecutive number of the previous number by comparing it with right + 1 of the range. If it's consecutive, it extends the current range by setting right to this number. If it's not consecutive, it means the current range has ended, so it calls resolve() to add the current range to ranges and resets range to the new number.
            if range.right + 1 == num {
                range.right = num
            } else {
                resolve()
                range.assign(num)
            }
        }
        // Call resolve() one more time to ensure the last range is added to ranges.
        resolve()

        return ranges
    }
}



final class Solution2 {
    struct NumRange: CustomStringConvertible {
        var left: Int
        var right: Int
        var sleft: String { "\(left)" }
        var sright: String { "\(right)" }
        var description: String { return sleft + " -> " + sright }
        
        mutating func assign(_ val: Int) {
            left = val
            right = val
        }
    }
    
    func summaryRanges(_ nums: [Int]) -> [String] {
        guard !nums.isEmpty else { return [] }
        var ranges = [String]()
        var range = NumRange(left: nums[0], right: nums[0])
        
        func resolve() {
            ranges += [range.left == range.right ? range.sleft : range.description]
        }
        
        for num in nums[1...] {
            if range.right + 1 == num {
                range.right = num
            } else {
                resolve()
                range.assign(num)
            }
        }
        resolve()
        
        return ranges
    }
}
