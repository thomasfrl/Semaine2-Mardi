def sum_of_3_or_5_multiples(n)
	if (n.is_a? Integer) && n >= 0
		sum = 0
		(n).times do |i|		
			if is_multiple_of_3_or_5?(i)
		      # si la réponse est "true", alors je rajoute la valeur de i à une somme que je retournerais en fin de fonction (mon return final).
		      sum += i
		    else
		      # si la réponse est "false"…ben y a pas de else. Si i n'est pas multiple, on passe au i suivant.
		    end
		  #fin de la boucle
		end
	  return sum
	else
		"Yo ! Je ne prends que les entiers naturels. TG"
	end
end

def is_multiple_of_3_or_5?(i)
	i%3 == 0 || i%5 == 0 ? true : false
end


#puts sum_of_3_or_5_multiples(11) #=> 33
#puts sum_of_3_or_5_multiples(10) #=> 23

