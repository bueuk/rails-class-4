def text(nama)
  nama = nama.split
  begin
    if nama.count > 2 
      puts "#{nama[0].capitalize} #{nama[1].chars.first.capitalize + '.'} #{nama[2].capitalize}"
    else
      puts "#{nama[0].capitalize} #{nama[1].capitalize}"
    end
  rescue
    puts 'Kamu harus memasukan nama depan, nama tengah(optional), dan nama belakang'
  end
  
end

puts 'Siapa nama kamu?'
nama = gets

text(nama)
