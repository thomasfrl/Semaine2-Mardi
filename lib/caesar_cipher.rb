def caesar_cipher(sentence, key)
	
	unless (key.is_a? Integer) && key <= 62 && key >= 0
		return "La clef est mauvaise"
	end

	i=0
	sentence.chars do |letter|
		if letter =~ /[a-zA-Z]/i
			letter.ord < 91 ? up = true : up =false
			letter = letter.downcase
			

			if letter.ord + key >122
				letter = (letter.ord + key - 26).chr
			else
				letter = (letter.ord + key).chr
			end 

			up ? sentence[i] = letter.upcase : sentence[i] = letter
		end	
	i += 1	
	end
	return sentence
end

#puts caesar_cipher("What a string!", 5)