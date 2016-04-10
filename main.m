import inputData.*
import plot.*
import retStocks.*
%input musicMaker.*

[names, prices, purchasedPrices, startDates, endDates] = input()
[stockNames, data] = retStocks(stockNames, startDates, endDates);
plotStocks(stockNames, data, purchasedPrices)
%makeMusic(data,purchasedPrices)




