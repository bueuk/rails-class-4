class String
  def numeric?
    Float(self) != nil rescue false
  end

  def average(angka)
    angka = angka.split
    if angka.all? {|i| i.numeric?}
      angka = angka.map(&:to_i)
      puts "Nilai rata-rata: #{angka.sum / angka.size}"
    else
      puts 'String detected!! semua harus angka!'
    end

  end
end

puts 'Nilai nilai yang ingin dihitung :'
angka = gets.chomp

avg = String.new
avg.average(angka)

#puts "Nilai rata-rata : #{hasil}"
