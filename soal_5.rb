puts 'Kalimat yang ingin dihitung hurufnya: '
huruf = gets

#Nyari di stackoverflow, link nya lupa
huruf_to_hash_count_char = huruf.scan(/\w/).inject(Hash.new(0)){|h, c| h[c.downcase] += 1; h}
huruf_to_hash_count_char.each do | k, v|
  puts "#{k} muncul #{v} kali"
end
