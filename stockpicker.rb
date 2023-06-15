def stock_picker(pricesArray)
  combos = pricesArray.combination(2).to_a
  profit = 0
  prices = [0, 0]

  combos.each do |pair|
    todaysProfit = pair[1] - pair[0]
    if todaysProfit > profit
      profit = todaysProfit
      prices = [pair[0], pair[1]]
    end
  end

  buyDay = pricesArray.index(prices[0])
  sellDay = pricesArray.index(prices[1])

  days = [buyDay, sellDay]

  days

end

stock_picker([17,3,6,9,15,8,6,1,10])