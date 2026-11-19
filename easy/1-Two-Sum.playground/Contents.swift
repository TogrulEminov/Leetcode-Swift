import UIKit

// MARK: You are given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
//You may assume that each input would have exactly one solution, and you may not use the same element twice.
//You can return the answer in any order.

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()

        for (i, num) in nums.enumerated() {
            let need = target - num

            if let foundIndex = map[need] {
                return [foundIndex, i]
            }
            map[num] = i
        }
        return []
    }
}

let solution = Solution()
print(solution.twoSum([2, 7, 11, 15], 9)) // Çıxış: [0, 1]
print(solution.twoSum([3, 2, 4], 6))      // Çıxış: [1, 2]
print(solution.twoSum([3, 3], 6))         // Çıxış: [0, 1]
