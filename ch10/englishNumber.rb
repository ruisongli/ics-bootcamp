def english_number number
  if number < 0
    return 'Please enter a number zero or greater.'
  end

  if number == 0
    return 'zero'
  end

  num_string = ''
  ones_place = ['one', 'two', 'three','four', 'five', 'six','seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty','forty', 'fifty', 'sixty','seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen','fourteen', 'fifteen', 'sixteen','seventeen', 'eighteen', 'nineteen']
  marks = [1000000000000, 1000000000, 1000000,1000,100]
  marks_english = [' trillion',' billion',' million',' thousand',' hundred']

  left = number
  i = 0

  while left/100 >= 1
    write = left/marks[i]
    left = left - write*marks[i]
    if write > 0
      marksenglish = english_number write
      num_string = num_string + marksenglish + marks_english[i]
      if left > 0
        num_string = num_string + ' '
      end
    end
    i = i + 1
  end


  write = left/10
  left = left - write*10
  if write > 0
    if ((write == 1) and (left > 0))
      num_string = num_string + teenagers[left - 1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end
    if left > 0
      num_string = num_string + '-'
    end
  end

  write = left
  left = 0
  if write > 0
    num_string = num_string + ones_place[write - 1]
  end
  num_string
end

input = gets.chomp.to_i
puts english_number input
