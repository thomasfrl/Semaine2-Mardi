def word_counter(words , dictionary)
	hash_word_count = Hash.new
	words = words.split
	dictionary.each do |word_dictionary|
		n = 0
		words.each do |word|
			if (word =~ /#{word_dictionary}/i)
				n +=1
			end
		end
		if n != 0
			hash_word_count["#{word_dictionary}"] = n
		end
	end
	return hash_word_count
end
