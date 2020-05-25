price_array = [17,3,6,9,15,8,6,1,10]

def stock_picker(price_array)
  buy_sell = []
  best_profit = 0
  for i in 0...price_array.length - 1
    j = 1
    while i + j < price_array.length do
      profit = price_array[i + j] - price_array[i]
      if profit > best_profit
        best_profit = profit
        buy_sell[0] = i
        buy_sell[1] = i + j       
      end
      j += 1
    end
  end
  buy_sell
end

p stock_picker(price_array)