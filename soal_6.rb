class Calculator
  def calc_process(params)
    params = params.split

    if params.count == 3
      if params.grep(/\+/).any?
        params[0].to_i + params[2].to_i
      elsif params.grep(/\-/).any?
        params[0].to_i - params[2].to_i
      elsif params.grep(/\*/).any?
        params[0].to_i * params[2].to_i
      elsif params.grep(/\//).any?
        begin
          params[0].to_i / params[2].to_i
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
hasil = calc.calc_process(value)
puts hasil
