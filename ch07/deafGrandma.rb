statement = gets.chomp
while statement != 'BYE'
  if statement != statement.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  else
    year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + year.to_s + ' !'
  end
  statement = gets.chomp
end
puts 'bye'
