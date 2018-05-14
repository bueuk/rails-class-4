class String
  def numeric?
    Float(self) != nil rescue false
  end

  def average(angka)
    angka = angka.split
    if angka.all? {|i| i.numeric?}
      angka = angka.map(&:to_i)
      angka.sum / angka.size
    else
      puts 'String detected!! semua harus angka!'
    end

  end
end

puts 'Nilai nilai yang ingin dihitung :'
angka = gets.chomp

avg = String.new
hasil = avg.average(angka)

puts hasil
