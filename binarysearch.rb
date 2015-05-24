def binarySearch arr,target,lo=0,hi=arr.length-1
  return -1 if lo > hi
  mid = (hi+lo)/2
  arr[mid] === target ? mid : arr[mid]>target ? binarySearch(arr,target,lo,mid-1): binarySearch(arr,target,mid+1,hi)
end
