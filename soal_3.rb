puts 'User memasukan angka :'
angka = gets.chomp

begin

  angka = Integer(angka)
    
  if (angka % 3 == 0) & (angka % 5 == 0)
    puts 'FizzBuzz'
  elsif angka % 3 == 0
    puts 'Fizz'
  elsif angka % 5 == 0
    puts 'Buzz'
  else
    puts 'angka bukan kelipatan 3 atau 5'.upcase!
  end
  
rescue 
  puts 'Harus angka!'

end
