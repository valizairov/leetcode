/*
 118. Pascal's Triangle - Easy
 
 Given an integer numRows, return the first numRows of Pascal's triangle.
 In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

 Example 1:
 Input: numRows = 5
 Output: [[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
    
 Example 2:
 Input: numRows = 1
 Output: [[1]]
 */


class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var array = [[Int]]()
        for i in 1...numRows {
            var ja = [Int]()
            for j in 1...i {
                print(i,j)
                
            }
            print("--")
        }
        return array
    }
}

Solution().generate(5) //[[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
Solution().generate(1) //[[1]]
