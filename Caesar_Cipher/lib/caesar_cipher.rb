def caesar_cipher(string, num)
    capitals = Array.new 
    string.split('').each_with_index do |char, index|
        if char ==  " "
            next
        elsif char == char.upcase
            capitals << index 
        end
    end
    

    new_str = string.downcase.gsub(/[a-z]/) { |m| ((m.ord - 'a'.ord + num) % 26 + 'a'.ord).chr }
    
    output = new_str.split('')

    capitals.each do |cap|
        output[cap] = output[cap].upcase
    end  

    output.join
    
end


#puts caesar_cipher('Rd Rtymjw Nx F Ltti Ujwxts', -5)

#puts caesar_cipher('Zzyzx Road', 5)

#puts caesar_cipher('Eedec Wtfi', -5)