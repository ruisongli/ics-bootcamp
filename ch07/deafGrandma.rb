statement = gets.chomp
while statement != 'BYE'
  if statement != statement.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
    statement = gets.chomp
  else
    year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + year.to_s + ' !'
    statement = gets.chomp
  end
end
