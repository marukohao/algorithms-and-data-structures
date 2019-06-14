#given a nested array, flatten the elements to a single array
#in: [2,[3,4],[3[4[5[]]]]]
#out: [2,3,4,3,4,5]

def flatten_elements(array)
  new_array = []
  array.each do |item|
    if item.class == Array
      new_array += flatten_elements(item)
    else 
      new_array << item
    end
  end
  new_array
end
