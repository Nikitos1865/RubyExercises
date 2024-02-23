def stock_picker(prices)
    max_profit = prices[1] - prices[0]
    buy_day = nil
    sell_day = nil
    prices.each_with_index do |price, index|
        for i in (index+1)..prices.length-1 do
            if prices[i]-prices[index] > max_profit
               max_profit = prices[i] - prices[index]
               buy_day = index
               sell_day = i
            end 
        end
    end 
    return [buy_day, sell_day]
end

puts stock_picker([17,3,6,9,15,8,6,1,10])