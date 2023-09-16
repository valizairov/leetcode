/*
 225. Implement Stack using Queues - Easy
 
 Implement a last-in-first-out (LIFO) stack using only two queues. The implemented stack should support all the functions of a normal stack (push, top, pop, and empty).

 Implement the MyStack class:
    void push(int x) Pushes element x to the top of the stack.
    int pop() Removes the element on the top of the stack and returns it.
    int top() Returns the element on the top of the stack.
    boolean empty() Returns true if the stack is empty, false otherwise.
 
 Notes:
 You must use only standard operations of a queue, which means that only push to back, peek/pop from front, size and is empty operations are valid.
 Depending on your language, the queue may not be supported natively. You may simulate a queue using a list or deque (double-ended queue) as long as you use only a queue's standard operations.
 Example 1:

 Input
 ["MyStack", "push", "push", "top", "pop", "empty"]
 [[], [1], [2], [], [], []]
 Output
 [null, null, null, 2, 2, false]

 Explanation
 MyStack myStack = new MyStack();
 myStack.push(1);
 myStack.push(2);
 myStack.top(); // return 2
 myStack.pop(); // return 2
 myStack.empty(); // return False

 */


public struct Queue {
    fileprivate var array = [Int]()

    public mutating func enqueue(_ x: Int) {
        array.append(x)
    }
    
    public mutating func dequeue() -> Int {
        return array.removeFirst()
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public var front: Int {
        return array[0]
    }
    
}

public struct MyStack {
    fileprivate var queue = Queue()

    init() {}
    
    public mutating func push(_ x: Int) {
        queue.enqueue(x)
    }
    
    public mutating func pop() -> Int {
        return queue.dequeue()
    }
    
    public func top() -> Int {
        return queue.count
    }
    
    public var empty: Bool {
        return queue.isEmpty
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * let obj = MyStack()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Bool = obj.empty()
 */
