/*
 1002. Find Common Characters - Easy
 
 Given a string array words, return an array of all characters that show up in all strings within the words (including duplicates).
 You may return the answer in any order.

 Example 1:
 Input: words = ["bella","label","roller"]
 Output: ["e","l","l"]
 
 Example 2:
 Input: words = ["cool","lock","cook"]
 Output: ["c","o"]

 */

extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}

class Solution {
    func commonChars(_ words: [String]) -> [String] {
        if words.count == 0 { return [] }
        let word = words[0]
        if word == "" { return [] }
        if word.count == 1 { return [String(word[0])] }
        for i in 1..<words.count {
            print(words[i])
        }
        // Possible way is to use the dictionary of characters in 1st word, and look at them at each next word and eliminate if not found.
        return []
    }
}


let result = Solution().commonChars(["bella","label","roller"]) //["e","l","l"]
