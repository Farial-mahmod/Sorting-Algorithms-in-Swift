// Merge Sort algorithm implementation in Swift with comments for improved readability

func mergeSort(_ dataList : [Int]) -> [Int] {

  guard dataList.count > 0 else {
  return dataList
  }

  let leftHalf = Array(dataList[0..<dataList.count/2])
  let rightHalf = Array(dataList[dataList.count/2..<dataList.count])

  return mergeLists(left: mergeSort(leftHalf), right: mergeSort(rightHalf))
  
  // mergeLists() to be updated
  
}
