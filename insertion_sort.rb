def insertion_sort array

  (1...array.length).each do |i|
    (0...i).each do |j|
      if (block_given? && yield(array[i-j-1],array[i-j]) > 0) || array[i-j-1]>array[i-j]
        array[i-j-1],array[i-j] = array[i-j],array[i-j-1] 
      else
        break
      end
    end
  end

  array
end