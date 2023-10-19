/*
 118. Pascal's Triangle - Easy - 1

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
        guard numRows > 0 else { return [[]] }
        guard numRows > 1 else { return [[1]] }
        guard numRows > 2 else { return [[1],[1,1]] }
        var array = [[1],[1,1]]
        for i in 2...numRows {
            array[i][0] = 1
            for j in 1..<i-1 {
//                print(i,j)
                array[i][j] = array[i-1][j-2] + array[i-1][j-1]
            }
        }
        return array
    }
}

Solution().generate(5) //[[1],[1,1],[1,2,1],[1,3,3,1],[1,4,6,4,1]]
Solution().generate(1) //[[1]]
