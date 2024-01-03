/*
 100. Same Tree - Easy  
      
 Given the roots of two binary trees p and q, write a function to check if they are the same or not.
 Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.
  
 Example 1:
 Input: p = [1,2,3], q = [1,2,3]
 Output: true
 
 Example 2:
 Input: p = [1,2], q = [1,null,2]
 Output: false
 
 Example 3:
 Input: p = [1,2,1], q = [1,1,2]
 Output: false
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
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        if p?.val != q?.val {
            return false
        } else {
            return p!.val == q!.val && isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
        }
    }
}

//Input: p = [1,2,3], q = [1,2,3] / true
//let p1 = TreeNode(1)
//let p2 = TreeNode(2)
//let p3 = TreeNode(3)
//p1.left = p2
//p1.right = p3
//
//let q1 = TreeNode(1)
//let q2 = TreeNode(2)
//let q3 = TreeNode(3)
//q1.left = q2
//q1.right = q3
//
//Solution().isSameTree(p1, q1)


//Input: p = [1,2], q = [1,null,2] //Output: false
//let p1 = TreeNode(1)
//let p2 = TreeNode(2)
//p1.right = p2
//
//let q1 = TreeNode(1)
//let q2 = TreeNode()
//let q3 = TreeNode(3)
//q1.left = q2
//q1.right = q3
//
//Solution().isSameTree(p1, q1)



//Input: p = [1,2,1], q = [1,1,2] //Output: false
let p1 = TreeNode(1)
let p2 = TreeNode(2)
let p3 = TreeNode(1)
p1.left = p2
p1.right = p3

let q1 = TreeNode(1)
let q2 = TreeNode(1)
let q3 = TreeNode(2)
q1.left = q2
q1.right = q3

Solution().isSameTree(p1, q1)
