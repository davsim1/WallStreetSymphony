function plotStocks(stockNames, data, purchasePrices) 
    
    plot(data(:,1,1),data(:,2,1));
    datetick('x','mm/dd/yy','keepticks')
end
