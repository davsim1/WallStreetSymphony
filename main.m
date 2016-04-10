clc
import inputData.*
import plot.*
import retStocks.*
%input musicMaker.*

[names, prices, purchasedPrices, startDates, endDates] = inputData();
[names, data] = retStocks(names, startDates, endDates);
%plotStocks(names, data, purchasedPrices)
%makeMusic(data,purchasedPrices)




