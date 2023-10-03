/*
 20. Valid Parentheses - Easy
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.

Example 1:
Input: s = "()"
Output: true
                                                                 
Example 2:
Input: s = "()[]{}"
Output: true
                                                            
Example 3:
Input: s = "(]"
Output: false
*/

class Solution {
    class Stack {
        private var array = [String]()
        func push(_ s: String) {
            array.append(s)
        }
        func pop() -> String? {
            return array.popLast()
        }
        func peek() -> String? {
            return array.last
        }
    }
    
    func isValid(_ s: String) -> Bool {
        let stack = Stack()
        let map = [")": "(", "]": "[", "}": "{"]
        for c in s {
            if let ch = map[String(c)], ch == stack.peek() {
                stack.pop()
            } else {
                stack.push(String(c))
            }
        }
        return stack.peek() == nil
    }
}


Solution().isValid("()") //true
Solution().isValid("()[]{}") //true
Solution().isValid("(]") //false
Solution().isValid("([{}])") //true
