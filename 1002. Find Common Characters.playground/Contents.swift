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
        var word0 = words[0]
        if word0 == "" { return [] }
        if word0.count == 1 { return [String(word0[0])] }
        var sets = [Set<Character>]()
        for word in words {
            let set: Set<Character> = Set(word)
            sets.append(set)
        }
        var setA = sets[0]
        for set in sets {
            print("setA: \(setA), set: \(set)")
            setA = setA.intersection(set)
        }
        print("==========>")
        print(setA)

        return []
    }
}


let result = Solution().commonChars(["bella","label","roller"]) //["e","l","l"]
