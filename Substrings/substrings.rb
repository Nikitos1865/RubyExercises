dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
    hash = Hash.new(0)
    word.split(' ').each do |word_part|
        word_arr = word_part.downcase.chars
        puts word_part.downcase
        dictionary.reduce(hash) do |count, dictionary_word|
            if (dictionary_word.chars.all? {|e| word_arr.include?(e)})
                count[dictionary_word] += 1
            end
            count
        end
    end
    hash
end
    
puts substrings("Howdy partner, sit down! How's it going?", dictionary)
 







