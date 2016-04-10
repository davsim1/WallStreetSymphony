import inputData.*
import plot.*
import retStocks.*
%input musicMaker.*

[names, prices, purchasedDate, start, endD] = input();
[m,n] = size(prices); %only m is useful here
for n = 1:m
    [stockNames, data] = retStocks(names(n,:), datetime(start(n,1), start(n,2), start(n,3)), datetime(endD(n,1), endD(n,2), endD(n,3)));
    plotStocks(stockNames, data, prices(n,:));

end
%[stockNames, data] = retStocks(stockNames, startDates, endDates);
%makeMusic(data,purchasedPrices)




