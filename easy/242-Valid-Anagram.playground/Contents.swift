import UIKit

/// MARK:  Given two strings s and t, return true if t is an anagram of s, and false otherwise.

class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var charCount = [Character: Int]()
        var isCorrectWord: Bool = s.count == t.count
        guard isCorrectWord else { return false }

        for char in s {
            charCount[char, default: 0] += 1
        }
        for char in t {
            guard let count = charCount[char], count > 0 else {
                return false
            }
            charCount[char] = count - 1
        }

        return true
    }
}
let solution = Solution()
let s = "anagram"
let t = "nagaram"

solution.isAnagram(s, t)
