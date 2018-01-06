def new_roman_numeral num
  values = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
  numerals = ['M','CM','D','CD','C','XC','L','XL','X','IX','V','IV','I']
  rnumeral= ''
  i = 0

  while i <= 12
    while num >= values[i]
    num = num - values[i]
    rnumeral = rnumeral + numerals[i]
    end
  i = i + 1
  end
rnumeral
end

puts 'Enter an integer to be converted into romman numerals'
puts new_roman_numeral gets.chomp.to_i
