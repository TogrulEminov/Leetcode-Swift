import UIKit

//MARK:  Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
class Solution {

    func containsDuplicate(_ nums: [Int]) -> Bool {
        var seen = Set<Int>()

        for num in nums {
            if seen.contains(num) {
                return true
            }

            seen.insert(num)
        }
        return false
    }
    
}
let solution = Solution()

let test1 = [1, 2, 3, 1]
let test2 = [1, 2, 3, 4]
let test3 = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]

print(solution.containsDuplicate(test1)) // true
print(solution.containsDuplicate(test2)) // false
print(solution.containsDuplicate(test3)) // true
