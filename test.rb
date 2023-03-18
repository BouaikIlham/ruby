# def caesar_cipher(str, key)
#     newarr = []
#     chars = str.split('')
#     chars.each { |c|
#         code =  c.ord
#         if code >= 65 && code <= 90 
#             code = ((code - 65 + key) % 26) + 65;
#         elsif code  >= 97 && code <= 122 
#             code = ((code - 97 + key ) % 26) + 97
#         end

#         newarr.push(code.chr)
#     }

#     newarr.join('')
    
# end

# puts caesar_cipher("middle-Outz", 2)




def substrings(text, dictionary)
    # create an empty hash
    result = Hash.new(0)
    lowered_text = text.downcase
    # iterate over every word in dictionary
    dictionary.each do |word| 
        matches = lowered_text.scan(word).length
        result[word] = matches unless matches == 0
    end 
    
    puts result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

 puts substrings("Howdy partner, sit down! How's it going?", dictionary)
