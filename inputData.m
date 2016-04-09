function [name, price, purchase, date, endDate] = inputData() 


num = input('Enter the number of stocks you would like to see: ');

name = zeros(num,4);
purchase = zeros(num,1);
date = zeros(num,11);
endDate = zeros(num,11);

for n = 1:num
    str = input('Enter Stock name: ', 's');
    if (length(str) == 3)
        name(n, 1:3) = str(:);
    else
       name(n,:) = str(:); 
    end
    
    
    y = input('Enter your purchased year (ex. 97): ');
    m = input('Enter your purchased month (ex. 01): ');
    d = input('Enter your purchased day (ex. 01): ');
    datetime(y,m,d)
    purchase(n,1) = dateime(y,m,d);
    
    y = input('Enter your start year (ex. 97): ');
    m = input('Enter your start month (ex. 01): ');
    d = input('Enter your start day (ex. 01): ');
    date(n,:) = datetime(y,m,d);
    
    y = input('Enter your end year (ex. 97): ');
    m = input('Enter your end month (ex. 01): ');
    d = input('Enter your end day (ex. 01): ');
    endDate(n,1) = datetime(y,m,d);
end 

end
