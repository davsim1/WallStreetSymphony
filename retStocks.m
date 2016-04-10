%data(time,price,stockNumber),stockNumber refers to index in stockName
%stockNames is an array of strings
%startDate and endDate is an array of ints with 3 columns
%stockNames, startDate, endDate MUST have same size

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

%fetches the first stock name and uses its size to create a 3D array 
c = yahoo;
startD = datetime(startDate(1,1),startDate(1,2),startDate(1,3));
endD = datetime(endDate(1,1),endDate(1,2),endDate(1,3));
fetched = fetch(c, stockNames, 'close', startD, endD, per);
data = zeros(size(fetched, 1),2,size(stockNames, 1));

%loops to fetch each stock and add to data
for z = 1: size(stockNames, 1)
    %converting inputted date to matlab date
    startD = datetime(startDate(z,1),startDate(z,2),startDate(z,3));
    endD = datetime(endDate(z,1),endDate(z,2),endDate(z,3));
    %pulling individual stock name out of matrix and trimming spaces
    stock = stockNames(z,:);
    stock = strtrim(stock);
    %calls yahoo stocks to find closing price at given name/date
    fetched = fetch(c, stock, 'close', startD, endD, per);
    fetched = flipud(fetched);
    for x = 1: size(fetched, 1)
        for y = 1: 2
            %copy fetched data into data
            data(x, y, z) = fetched(x, y);
        end
    end
end
end

