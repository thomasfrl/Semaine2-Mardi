def day_trader(list_of_prices)
	n = list_of_prices.size
	hash_compare_price = Hash.new 

	list_of_prices.each_with_index do |price_of_buy_day,buy_day|
		max_diff_for_buy_day = - Float::INFINITY
		sell_day_max = buy_day
		(n - buy_day-1).times do |j|
			sell_day = buy_day + j + 1
			if max_diff_for_buy_day < list_of_prices[sell_day] - price_of_buy_day
				sell_day_max = sell_day
				max_diff_for_buy_day = list_of_prices[sell_day] - price_of_buy_day
			end
		end	
		if buy_day != n-1
			hash_compare_price[max_diff_for_buy_day] = [buy_day,sell_day_max]
		end
	end
	return hash_compare_price.max_by{ |k,v| k }[1]
end