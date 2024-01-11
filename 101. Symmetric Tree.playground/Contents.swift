/*
 101. Symmetric Tree - Easy
 Given the root of a binary tree, check whether it is a mirror of itself (i.e., symmetric around its center).
  
 Example 1:
 Input: root = [1,2,2,3,4,4,3]
 Output: true
 
 Example 2:
 Input: root = [1,2,2,null,3,null,3]
 Output: false
  

 Constraints:

 The number of nodes in the tree is in the range [1, 1000].
 -100 <= Node.val <= 100
  

 Follow up: Could you solve it both recursively and iteratively?
 */

//Definition for a binary tree node.
public class TreeNode {   
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
 
class Solution {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return false
    }
}

//Example 1: Input: root = [1,2,2,3,4,4,3] //Output: true
//let p1 = TreeNode(1)
//let p2 = TreeNode(2)
//let p3 = TreeNode(3)
//let p4 = TreeNode(4)
//let q2 = TreeNode(2)
//let q3 = TreeNode(3)
//let q4 = TreeNode(4)
//p1.left = p2
//p2.left = p3
//p2.right = p4
//p1.right = q2
//q2.left = q4
//q2.right = q3
//
//Solution().isSymmetric(p1)



//Example 2: Input: root = [1,2,2,3,4,4,3] //Output: true
let p1 = TreeNode(1)
let p2 = TreeNode(2)
let p3 = TreeNode(3)
let q2 = TreeNode(2)
let q3 = TreeNode(3)
p1.left = p2
p2.right = p3
p1.right = q2
q2.right = q3

Solution().isSymmetric(p1)
