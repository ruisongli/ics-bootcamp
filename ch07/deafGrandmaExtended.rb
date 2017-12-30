statement = gets.chomp
while statement != ''
  if statement == 'BYE'
    puts 'HUH?! SPEAK UP, SONNY!'
    statement = gets.chomp
    if statement == 'BYE'
      puts 'HUH?! SPEAK UP, SONNY!'
      statement = gets.chomp
      if statement == 'BYE'
        break
      end
    end
  elsif statement == statement.upcase
    year = 1930 + rand(21)
    puts 'NO, NOT SINCE ' + year.to_s + ' !'
    statement = gets.chomp
  else
    puts 'HUH?! SPEAK UP, SONNY!'
    statement = gets.chomp
  end
end
