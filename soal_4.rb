puts 'Nilai nilai yang ingin dihitung :'
angka = gets.chomp.split

#belum divalidasi
#jika yang diinput adalah 'huruf' maka akan tetap dianggap integer karena sudah di to_i, jadi nilainya 0
s_to_i = angka.map(&:to_i)

puts "Nilai rata-ratanya adalah #{s_to_i.sum / s_to_i.size}"
