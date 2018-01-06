print 'Type in words and hit enter when finished to have them sorted in the order that they would appear in a dictionary.'
input = gets.chomp
word_bank = []
while input != ''
  word_bank.push input
  input = gets.chomp
end
puts word_bank.sort
