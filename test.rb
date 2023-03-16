def caesar_cipher(str, key)
    newarr = []
    chars = str.split('')
    chars.each { |c|
        code =  c.ord
        if code >= 65 && code <= 90 
            code = ((code - 65 + key) % 26) + 65;
        elsif code  >= 97 && code <= 122 
            code = ((code - 97 + key ) % 26) + 97
        end

        newarr.push(code.chr)
    }

    newarr.join('')
    
end

puts caesar_cipher("middle-Outz", 2)


