def oxford_comma(array)
  l = array.size
  if l == 1
    return array[0]
  elsif l == 2
    return array[0] + " and " + array[1]
  else
    separators = Array.new(l, ", ") #create array with a comma for each item in array
    last_item = array.last #save last item without a comma attached
    output_string = [] #define blank array to compile string into
    array.each_with_index do |entry, index|
      output_string << entry + separators[index] #combine each entry with comma
    end

    # last entry of output_string must be replaced with two entries - "and ", "last_item"
    l_2 = output_string.size
    output_string[l_2] = last_item
    output_string[l_2 - 1] = "and "
    output_string.join
  end
end
