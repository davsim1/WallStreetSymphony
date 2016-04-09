%data(time,price,stockNumber),stockNumber refers to index in stockName
%stockNames is an array of strings
%startDate and endDate are both single dates

%fetches data about the given stocks
function [stockNames, data] = retStocks(stockNames, startDate, endDate)

%setting the period for fetch
if endDate(1,1) - startDate(1,1) > 5
    per = 'v';
elseif endDate(1,1) - startDate(1,1) >= 1
    per = 'm';
elseif endDate(1,2) - startDate(1,2) >= 2
    per = 'w';
else
    per = 'd';
end
    
c = yahoo;
startDate = datetime(startDate(1,1),startDate(1,2),startDate(1,3));
endDate = datetime(endDate(1,1),endDate(1,2),endDate(1,3));
fetched = fetch(c, stockNames, 'close', startDate, endDate, per);
data = zeros(size(fetched, 1),2,size(stockNames, 1));

for z = 1: size(stockNames, 1)
    stock = stockNames(z,:);
    stock = strtrim(stock);
    %calls yahoo stocks to find closing price at given name/date
    fetched = fetch(c, stock, 'close', startDate, endDate, per);
    fetched = flipud(fetched);
    for x = 1: size(fetched, 1)
        for y = 1: 2
            data(x, y, z) = fetched(x, y);
        end
    end
end
end

