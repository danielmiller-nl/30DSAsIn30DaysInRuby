def quickSort array,lo=0,hi=array.length
  
  def swap array,a,b 
    temp = array[a]
    array[a] = array[b]
    array[b] = temp
  end

  return if lo == hi

  left = lo+1
  right = hi-1

  puts "A #{array} #{left} #{right} #{lo} #{hi}"
  until left>=right

    left+=1 if array[left]<array[0]
    right-=1 if array[right]>array[0]
    swap array,left,right if array[left]>=array[0]&&array[right]<=array[0]
  end
  
  swap array,lo,right if array[lo]>array[right]
  puts "B #{array} #{left} #{right} #{lo} #{hi}"
  quickSort array,lo,right
  quickSort array,right+1,hi

end
