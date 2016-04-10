function [name, price, purchase, date, endDate] = inputData() 


num = input('Enter the number of stocks you would like to see: ');
price = zeros(num,1);
name = zeros(num,4);
purchase = zeros(num,1);
date = zeros(num,11);
endDate = zeros(num,11);

for n = 1:num
    str = input('Enter Stock name: ', 's');
    if (length(str) == 3)
        name(n, 1:3) = str(:);
        name(n,4) = ' ';
    else
       name(n,:) = str(:); 
    end
    
    price(n,1) = input('Enter your purchased price: $');
    
    
    y = input('Enter your purchased year (ex. 97): ');
    m = input('Enter your purchased month (ex. 01): ');
    d = input('Enter your purchased day (ex. 01): ');
    purchase(n,1) = y;
    purchase(n,2) = m;
    purchase(n,3) = d;
    
    y = input('Enter your start year (ex. 97): ');
    m = input('Enter your start month (ex. 01): ');
    d = input('Enter your start day (ex. 01): ');
    date(n,1) = y;
    date(n,2) = m;
    date(n,3) = d;

    y = input('Enter your end year (ex. 97): ');
    m = input('Enter your end month (ex. 01): ');
    d = input('Enter your end day (ex. 01): ');
    endDate(n,1) = y;
    endDate(n,2) = m;
    endDate(n,3) = d;
end 

end
