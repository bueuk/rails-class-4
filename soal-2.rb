puts 'Siapa nama kamu?'
nama = gets

@array = nama.split

def text(f, m, l)
  if @array.count > 2 
    puts "#{f.capitalize} #{m.chars.first.capitalize + '.'} #{l.capitalize}"
  else
    puts "#{f.capitalize} #{m.capitalize}"
  end
  
end

text(@array[0], @array[1], @array[2])
