def day_trader(list_of_prices)
	n = list_of_prices.size
	hash_compare_price = Hash.new 
	max_day = []
	day_max = 0
	list_of_prices.each_with_index do |price,i|
		price_comparaison_of_day = 0
		(n - i - 1).times do |j|
			day_max = i
			if price_comparaison_of_day < price - list_of_prices[i+j+1]
				day_max = i+j+1
				price_comparaison_of_day = price - list_of_prices[i+j+1]
			end
		end	
		hash_compare_price[day_max] = price_comparaison_of_day
#		max_day[i] = price_comparaison_of_day.max
	end
	max_total = hash_compare_price.max_by{ |k,v| v }[0]
end


puts day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])

#marche pas!!!!!!