clc
import inputData.*
import plot.*
import retStocks.*
import musicMaker.*

[names, prices, purchasedPrices, startDates, endDates] = inputData();
[names, data] = retStocks(names, startDates, endDates);
plotStocks(names, data, purchasedPrices);
musicMaker(data,purchasedPrices);




