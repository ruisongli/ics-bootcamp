input = gets.chomp
unshuffled_array = []

while input != ''
  unshuffled_array.push input
  input = gets.chomp
end

assigned_spots = []

def shuffle some_array, assigned_spots
  recursive_shuffle some_array, [], assigned_spots
end

def recursive_shuffle unshuffled_array, shuffled_array, assigned_spots
  index = unshuffled_array.length.to_i
  placed_object = unshuffled_array.pop

  # base case
  if index == 1
    shuffled_array.push placed_object
    return shuffled_array
  # general case
  else
    i = rand(index)
    while assigned_spots.include? i
      i = rand(index)
    end
    assigned_spots.push i

    shuffled_array[i] = placed_object
    recursive_shuffle unshuffled_array, shuffled_array, assigned_spots
  end
end

puts shuffle unshuffled_array, assigned_spots
