input = gets.chomp
word_bank = []
while input != ''
  word_bank.push input
  input = gets.chomp
end
puts word_bank.sort
