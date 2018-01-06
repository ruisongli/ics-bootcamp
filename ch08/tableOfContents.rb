content = ['Table of Contents' , 'Chapter 1: Getting Started' , 'page  1', 'Chapter 2: Numbers' , 'page  9' , 'Chapter 3: Letters' , 'page 13']
line_width = 60
i = 1

puts 'Table of Contents'.center(line_width)

while i <= 6
  if i%2==1
    puts content[i].ljust(line_width/2) + content[i+1].rjust(line_width/2)
  end
  i = i + 2
end
