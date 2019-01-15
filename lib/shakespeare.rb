require_relative './word_counter.rb'

#----------------initialisation des dictionnaires---------------------------------------
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
dictionnary_bad_words = []
File.open("bannedwordlist.txt").each do |word| 
	dictionnary_bad_words << word.chomp
end


#----------------initialisation text shakespeare---------------------------------------

words_shakespeare = []
File.open("shakespeare.txt").each do |line|
	words_shakespeare << line		
end
words_shakespeare = words_shakespeare.join(" ")

#----------------lancement des compteurs---------------------------------------

puts word_counter(words_shakespeare, dictionnary)
puts word_counter(words_shakespeare, dictionnary_bad_words)

