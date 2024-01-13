// Insertion Sort in Swift

import Foundation

func insertionSort(_ ar: [Int]) -> [Int] {
var arr = ar
  for i in 1..<arr.count {
    var j = i

  while j > 0 && arr[j-1] > arr[j] {
  arr.swapAt(j, j-1)
  j -= 1
}

  }
  // printing the sorted array
  print(arr)
  return arr
}

// calling the function
insertionSort([7,3,9])


