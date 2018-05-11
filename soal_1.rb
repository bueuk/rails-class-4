first_name = 'nandang'
middle_name = 'willier'
last_name = 'sopyan'

def text(f, m, l)
  if m != ''
    m = m.capitalize.chars.first + '.'
  end
  
  puts "#{f.capitalize} #{m} #{l.capitalize}".split.join(' ')
end

text(first_name, middle_name, last_name)
