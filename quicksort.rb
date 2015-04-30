def quickSort array,lo=0,hi=array.length
  return if lo+1 >= hi
  def swap array,a,b 
    temp = array[a]
    array[a] = array[b]
    array[b] = temp
  end

  left = lo+1
  right = hi-1

  until left>=right
    left+=1 until array[left]>=array[lo]
    right-=1 until array[right]<=array[lo]
    swap array,left,right unless left>right
    #left+=1 if array[left]<array[lo]
    #right-=1 if array[right]>array[lo]
  end
  
  swap array,lo,right
  quickSort array,lo,right
  quickSort array,right+1,hi

end
