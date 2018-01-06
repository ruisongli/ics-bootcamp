puts 'what is the beginning year?'
start_year = gets.chomp.to_i
puts 'what is the ending year?'
end_year = gets.chomp.to_i
leap_year = ''

while start_year <= end_year
  if start_year%400 == 0 || (start_year%4 == 0 && start_year%100 != 0)
    leap_year = leap_year + start_year.to_s + "\n"
  else
    leap_year = leap_year
  end
  start_year = start_year + 1
end
print leap_year
