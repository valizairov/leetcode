/*
22. Generate Parentheses - Medium

Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.

Example 1:
Input: n = 3
Output: ["((()))","(()())","(())()","()(())","()()()"]
 
Example 2:
Input: n = 1
Output: ["()"]
 
*/

class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        guard n > 0 else { return [""] }
        var result = [String]()
        for i in 0..<n {
            for l in generateParenthesis(i) {
                for r in generateParenthesis(n - 1 - i) {
                    result.append("(" + l + ")" + r)
                }
            }
        }
        return result
//        guard n > 0 else { return [""] }
//        var result = [String]()
//        for i in 0 ..< n {
//            let r = generateParenthesis(n-1-i)
//            generateParenthesis(i).forEach { l in
//                result.append(contentsOf: r.map{ "(\(l))\($0)" })
//            }
//        }
//        return result
    }
}

let result = Solution().generateParenthesis(1) //["()"]
let result3 = Solution().generateParenthesis(3) //["((()))","(()())","(())()","()(())","()()()"]
