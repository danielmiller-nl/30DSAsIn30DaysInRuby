def mergeSort array

  return array if array.length == 1

  mid = array.length/2
  bottomHalf = array[0...mid]
  topHalf = array[mid..-1]

  sortedBottom = mergeSort bottomHalf
  sortedTop = mergeSort topHalf

  bC = 0
  tC = 0

  sorted = []

  until bC == sortedBottom.length || tC == sortedTop.length
    if sortedBottom[bC]<sortedTop[tC]
      sorted << sortedBottom[bC]
      bC+=1
    else
      sorted << sortedTop[tC]
      tC+=1
    end
  end

  sorted += sortedBottom[bC..sortedBottom.length]
  sorted += sortedTop[tC..sortedTop.length]
  sorted

end