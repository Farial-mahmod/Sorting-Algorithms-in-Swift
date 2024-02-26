/*
QuickSort is a sorting algorithm of divide and conquer paradigm that sorts values. It uses a recursive approach to compute the values in-place (no extra space required) in order. 

Time Complexity: Best case and average case O(N log N), worst case O(N*N)
Space Complexity: O(log N)
*/

import Foundation

func quicksort<G: Comparable>(_ rolls: [G]) -> [G] {

// below is the base-case to end the recursive computation
guard rolls.count > 1 else { return rolls }

// pivot is the value against which lower, equal and higher portions are differentiated
let pivot = rolls[rolls.count / 2]

let lower = rolls.filter { $0 < pivot }
let equal = rolls.filter { $0 == pivot }
let higher = rolls.filter { $0 > pivot }

// returning the recursive quicksort computation unless the base-case is met
return quicksort(lower) + equal + quicksort(higher)
}

// rolls array contains my roll numbers throughout my academic life to test the quicksort function
var rolls = [24,23,30,58,84,0]

print(quicksort(rolls))
