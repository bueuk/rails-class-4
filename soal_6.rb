puts 'Perhitungan: '
hitung = gets.chomp.split


class Calculator
  def penjumlahan(a, b)
    a + b
  end

  def pengurangan(a, b)
    a - b
  end

  def perkalian(a, b)
    a * b
  end

  def pembagian(a, b)
    begin
      a / b
    rescue
      puts 'Terjadi error. Pastikan tidak dibagi 0'
    end
  end
end

if hitung.count == 3
  if hitung.grep(/\+/).any?
    calc = Calculator.new
    hasil_jumlah = calc.penjumlahan(hitung[0].to_i, hitung[2].to_i)
    puts hasil_jumlah
    
  elsif hitung.grep(/\-/).any?
    calc = Calculator.new
    hasil_kurang = calc.pengurangan(hitung[0].to_i, hitung[2].to_i)
    puts hasil_kurang

  elsif hitung.grep(/\*/).any?
    calc = Calculator.new
    hasil_kali = calc.perkalian(hitung[0].to_i, hitung[2].to_i)
    puts hasil_kali

  elsif hitung.grep(/\//).any?
    calc = Calculator.new
    hasil_bagi = calc.pembagian(hitung[0].to_i, hitung[2].to_i)
    puts hasil_bagi
  else
    puts 'Operator aritmatik tidak dikenali!'
  end
else
  puts 'Ada yang error! pisahkan perhitungan dengan spasi, misal 2 + 3 . Minimal dan maksimal perhitungan adalah dua nilai, lebih atau kurang dari dua nilai tidak dianggap!' 
end
