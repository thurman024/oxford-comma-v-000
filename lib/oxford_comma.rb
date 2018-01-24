def oxford_comma(array)
  l = array.size
  if l == 1
    return array[0]
  elsif l == 2
    return array[0] + " and " + array[1]
  else
    separators = Array.new(l, ", ") #create array with a comma for each item in array
    output_string = [] #define blank array to compile string into
    array.each_with_index do |entry, index|
      output_string << entry + separators[index] #combine entry with comma
    end

    # last two entries of output_string are "string" and ", "
    # move this string to the end, and replace second to last entry of output_string with "and "
    l_2 = output_string.size
    output_string[l_2] = output_string[l_2 - 1]
    output_string[l_2 - 1] = "and "
    output_string.join
  end
end
