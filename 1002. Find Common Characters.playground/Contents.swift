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
class Solution {
    func commonChars(_ words: [String]) -> [String] {
        // Possible way is to use the dictionary of characters in 1st word, and look at them at each next word and eliminate if not found.
        return []
    }
}


let result = Solution().commonChars(["bella","label","roller"]) //["e","l","l"]
