def binarySearch array,toFind,low=0,high=array.length
  return array[0] == toFind ? low : -1 if high - low == 0
  mid = (high-low)/2+low
  if array[mid] == toFind
    mid
  elsif array[mid]<toFind
    binarySearch array,toFind,mid+1,high
  else
    binarySearch array,toFind,low,mid
  end
end 