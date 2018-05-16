def count(huruf)
  char = huruf.scan(/\w/).inject(Hash.new(0)){|h, c| h[c.downcase] += 1; h}
  char.each do | key, value |
    puts "#{key} muncul #{value}"
  end
end

puts 'Kalimat yang ingin dihitung hurufnya: '
huruf = gets

count(huruf)
