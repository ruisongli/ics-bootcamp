content = ['Table of Contents' , 'Chapter 1: Getting Started' , 'page  1', 'Chapter 2: Numbers' , 'page  9' , 'Chapter 3: Letters' , 'page 13']
line_width = 60
puts content[0].center(line_width)
puts content[1].ljust(line_width/2) + content[2].rjust(line_width/2)
puts content[3].ljust(line_width/2) + content[4].rjust(line_width/2)
puts content[5].ljust(line_width/2) + content[6].rjust(line_width/2)
