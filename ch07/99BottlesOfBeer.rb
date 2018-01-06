number = 99
while number != 0
  if number != 1
    puts number.to_s + 'bottles of beer on the wall'
    puts 'take one down and pass it around, '+ (number - 1).to_s + ' bottles of beer on the wall'
  else
    puts '1 bottle of beer on the wall, 1 bottle of beer'
    puts 'Take one down and pass it around, no more bottles of beer on the wall.'
  end
number = number - 1
end
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
