price_per_day = [17, 3, 6, 9, 15, 8, 6, 1, 10]




def stock_picker(stock_prices)
  best_combination = [0, 1]
  highest_profit = 0
  stock_prices.each_with_index do |buy, buy_index|
    stock_prices.each_with_index do |sell, sell_index|
      if (sell - buy) > highest_profit and buy_index < sell_index
        best_combination = [buy_index, sell_index]
        highest_profit = sell - buy
      end
    end
  end
  return best_combination
end

p stock_picker(price_per_day)