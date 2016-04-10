import inputData.*
import plot.*
import retStocks.*
%input musicMaker.*

[names, prices, purchasedDate, start, endD] = input();
[m,n] = size(prices); %only m is useful here
for n = 1:m
    [stockNames, data] = retStocks(names(n,:), start(n,:), endD(n,:));
    plotStocks(stockNames, data, prices(n,:));

end
%[stockNames, data] = retStocks(stockNames, startDates, endDates);
%makeMusic(data,purchasedPrices)




