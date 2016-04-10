function plotStocks(stockNames, data, purchasePrices) 
    
    plot(data(:,1,1),data(:,2,1));
    datetick('x','mm/dd/yy','keepticks')
    title({'Stock Price vs Time for',stockNames(1,:)});
    xlabel('Date');
    ylabel('Price (USD)');
end
