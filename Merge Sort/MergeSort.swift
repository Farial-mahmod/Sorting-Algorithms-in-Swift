// Merge Sort algorithm implementation in Swift with comments for improved readability

import Foundation

func mergeSort(dataList : [Int]) -> [Int] {

  guard dataList.count > 1 else {
  return dataList
  }

  let leftHalf = Array(dataList[0..<dataList.count/2])
  let rightHalf = Array(dataList[dataList.count/2..<dataList.count])

  return mergeLists(left: mergeSort(dataList: leftHalf), right: mergeSort(dataList: rightHalf))
  
}

func mergeLists(left: [Int], right: [Int]) -> [Int] {

  var sortedList = [Int]()
  var left = left
  var right = right
  
  // 
  while left.count>0 && right.count>0 {
    if(left.first! < right.first!){
      sortedList.append(left.removeFirst())
    } else {
      sortedList.append(right.removeFirst())
    }
  }
  return sortedList + left + right
}

var arr = [7,2,9,0]
print(mergeSort(dataList: arr))
