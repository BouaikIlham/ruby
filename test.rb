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




# def substrings(text, dictionary)
#     dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
#     # create an empty hash
#     result = Hash.new(0)
#     lowered_text = text.downcase
#     # iterate over every word in dictionary
#     dictionary.each do |word| 
#         matches = lowered_text.scan(word).length
#         result[word] = matches unless matches == 0
#     end 
    
#     puts result
# end

# dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#  puts substrings("Howdy partner, sit down! How's it going?", dictionary)

dictionary = ["my","name","is","going","horn","how","ilham","it","i","low","bouaik","movies","partner","sports"]

# p 'Enter you text'
# text = gets.chomp
# result = Hash.new
# dictionary.each do |word|
#     matches = text.scan(word).length
#     result[word] =  matches unless matches == 0
# end
# p result

# dictionary = %w[below down go going horn how howdy it i low own part partner sit i am gonna create a large dictionary so that it will be helpful]
# p 'enter text:'
# search = gets.chomp
# filtered_search = search.downcase
# words = filtered_search.split(' ')
# p words
# result = Hash.new
# words.each do |word|
#   result[word] += 1 if dictionary.include?(word)
# end
# p result

# sould return the best day of sell and buy
def stock_picker(prices)
    res = []
    prices.each_with_index do |price, i|
       highest_val = prices[i..].max   
       highest_idx = prices[i..].each_with_index.max[1] + i
       res.push([highest_val - price,i, highest_idx])
    end
     res.max_by(&:first)
end

puts stock_picker([17,3,6,9,15,8,6,1,10])


