def day_trader(list_of_prices)
	n = list_of_prices.size
	max_diff_for_buy_day = - Float::INFINITY
	days_max_benef = []
	list_of_prices[0...n-1].each_with_index do |price_of_buy,buy_day|
		list_of_prices[buy_day+1..-1].each_with_index do |price_of_sell,j|
			sell_day = buy_day + j + 1
			if max_diff_for_buy_day < price_of_sell - price_of_buy
				days_max_benef = [buy_day,sell_day]
				max_diff_for_buy_day = price_of_sell - price_of_buy
			end
		end	
	end
	return days_max_benef
end