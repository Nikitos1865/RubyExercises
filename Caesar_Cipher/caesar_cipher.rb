def caesar_cipher(string, num)
    capitals = Array.new 
    string.chars.each_with_index do |char, index|
        if char == char.upcase
            capitals << index 
        end
    end
    

    new_str = string.downcase.gsub(/[a-z]/) { |m| ((m.ord - 'a'.ord + num) % 26 + 'a'.ord).chr }


        capitals.each do |cap|
            new_str = new_str.sub(new_str[cap], new_str[cap].upcase)
        end  

    new_str 


    
end

puts caesar_cipher('My Mother Is A Good Person', 5)

puts caesar_cipher('Rd Rtymjw Nx F Ltti Ujwxts', -5)

puts caesar_cipher('Zzyzx Road', 5)

puts caesar_cipher('Eedec Wtfi', -5)