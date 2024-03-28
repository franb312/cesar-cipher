def cesar_cypher (text , shift)
    shift %= 26


    encrypted_text = ''
    text.each_char do |char|
        if char.match(/[a-zA-Z]/) 
        ascii_offset = char.downcase == char ? 97 : 65 
        encrypted_char = ((char.ord - ascii_offset + shift) % 26 + ascii_offset).chr
        encrypted_text += encrypted_char
        else
        encrypted_text += char
        end
    end
    return encrypted_text
end 

