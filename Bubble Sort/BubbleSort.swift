func bubbleSort(_ InputArray: inout [Int]){

// calculating the size of the input array
let arraySize = InputArray.count

// this variable will temporarily store a value to be exchanged/swapped
var tempStorage = 0
  
// looping through the array with two index variables, namely 'i' & 'j'
  for i in 0..<arraySize{
    for j in 0..<arraySize-i-1{
      // if an earlier index's value is larger than its adjacent later one, exchanging the two (swapping)
      if(InputArray[j]>InputArray[j+1]){
        tempStorage = InputArray[j]
        InputArray[j] = InputArray[j+1]
        InputArray[j+1] = tempStorage
      }
    }
  }
  // displaying the result of the sorted array
  print("The sorted array is now: \(InputArray)")
}

// one may modify this array to test
var InputArray = [9,8,7,6,5]

// calling the function with the array as its argument
print(bubbleSort(&InputArray))
