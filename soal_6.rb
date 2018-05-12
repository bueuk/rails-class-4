class Calculator
  def calculate(value)
    value = value.split

    if value.count == 3
      if value.grep(/\+/).any?
        value[0].to_i + value[2].to_i
      elsif value.grep(/\-/).any?
        value[0].to_i - value[2].to_i
      elsif value.grep(/\*/).any?
        value[0].to_i * value[2].to_i
      elsif value.grep(/\//).any?
        begin
          value[0].to_i / value[2].to_i
        rescue
          puts 'Terjadi error. Pastikan tidak dibagi 0'
        end
      else
        puts 'Operator aritmatik tidak diketahui'
      end
      
    else
      puts 'Ada yang error!!! pisahkan perhitungan dengan spasi, misal 2 + 3 . Minimal dan maksimal perhitungan adalah dua nilai, lebih atau kurang dari dua nilai tidak dianggap!' 
    end
    
  end
end

puts 'Perhitungan: '
value = gets.chomp

calc = Calculator.new
hasil = calc.calculate(value)
puts hasil
