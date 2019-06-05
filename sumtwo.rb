def sumTwo(array, sum)
  array.each_with_index do |int1, i|
    array.each_with_index do |int2, j|
      if i < j
        return [int1, int2] if int1 + int2 == sum
      end
    end
  end
  return "o pairs sum to this input"
end

sumTwo([2,2,3,1], 4)