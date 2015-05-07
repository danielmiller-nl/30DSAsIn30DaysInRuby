def bubble_sort array

  array.each_with_index do |x,i|
    swapped = false
    array[1..(-1-i)].each.with_index(1) do |x,j|
      if (block_given? && yield(array[j-1],array[j]) > 0) || array[j-1]>array[j]
        array[j],array[j-1] = array[j-1],array[j] 
        swapped = true
      end
    end
    return array if !swapped
  end

end
