input = gets.chomp
unsorted_array = []
while input != ''
  unsorted_array.push input
  input = gets.chomp
end

def sort some_array
  recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
  if unsorted_array == []
    return sorted_array
  end

  smallest = unsorted_array.pop
  unsorted_array2 = []
  unsorted_array.each do |tested_object|
    if tested_object.downcase < smallest.downcase
      unsorted_array2.push smallest
      smallest = tested_object
    else
      unsorted_array2.push tested_object
    end
  end
  sorted_array.push smallest
  recursive_sort unsorted_array2, sorted_array
end

result = sort(unsorted_array)
puts result
