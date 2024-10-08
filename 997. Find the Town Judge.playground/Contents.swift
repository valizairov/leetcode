/*
 997. Find the Town Judge - Easy
 
 In a town, there are n people labeled from 1 to n. There is a rumor that one of these people is secretly the town judge.
 If the town judge exists, then:
    The town judge trusts nobody.
    Everybody (except for the town judge) trusts the town judge.
    There is exactly one person that satisfies properties 1 and 2.
 
 You are given an array trust where trust[i] = [ai, bi] representing that the person labeled ai trusts the person labeled bi.
 If a trust relationship does not exist in trust array, then such a trust relationship does not exist.
 
 Return the label of the town judge if the town judge exists and can be identified, or return -1 otherwise.

 Example 1:
    Input: n = 2, trust = [[1,2]]
    Output: 2

 Example 2:
    Input: n = 3, trust = [[1,3],[2,3]]
    Output: 3

 Example 3:
    Input: n = 3, trust = [[1,3],[2,3],[3,1]]
    Output: -1
*/

class Solution {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        guard n > 0 else { return -1 }
        var judge: Int?
        for pair in trust {
            if judge == nil {
                judge = pair[1]
            } else {
                if judge != pair[1] {
                    return -1
                }
            }
        }
        return judge!
    }
}

let result = Solution().findJudge(3, [[1,3],[2,3],[3,1]])
let result2 = Solution().findJudge(2, [[1,2]])
let result3 = Solution().findJudge(3, [[1,3],[2,3]])
let result4 = Solution().findJudge(4, [[1,3],[1,4],[2,3],[2,4],[4,3]]) //3
//People can trust other people too, not only the judge. That is why 4-> 3 is showing that 3 is the judge
//This needs to be solved using tree
