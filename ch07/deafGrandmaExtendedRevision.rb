counter = 0

while counter <= 3
  statement = gets.chomp
  if statement == 'BYE'
    counter = counter + 1
    if counter == 3
      puts 'BYE'
      break
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end
  elsif statement == statement.upcase
    year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + year.to_s + ' !'
    counter = 0
  else
    puts 'HUH?! SPEAK UP, SONNY!'
    counter = 0
  end
end
