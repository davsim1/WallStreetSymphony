function plotStocks(stockNames, data, prices) 
    x = data(:,1,1);
    y = data(:,2,1);
    temp(1: size(data,1)) = prices;

    figure('Color',[0.8 0.8 0.8]);
    plot(x,y,x,temp, 'LineWidth', 4);
    grid on;
    datetick('x','mm/dd/yy','keepticks')
    %s = strcat('Stock Price vs Time For:', stockNames(1,:));
    title(['Stock Price vs Time For: ', stockNames(1,:)], 'FontSize',18);
    xlabel('Date');
    ylabel('Price (USD)');
end
