def word_counter(*words , dictionary)
	puts words
	
	hash_word_count = Hash.new

	words.each do |word|
		n = 0
		dictionary.each do |word_dictionary|
			if word == word_dictionary
				n +=1
			end
		end
		hash_word_count["#{word}"] = n
	end
	return hash_word_count
end