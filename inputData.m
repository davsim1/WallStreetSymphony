function [name, price, purchase, date, endDate] = inputData() 


num = input('Enter the number of stocks you would like to see: ');

name = zeros(num,4);
price = zeros(num,1);
purchase = zeros(num,3);
date = zeros(num,3);
endDate = zeros(num,3);

for n = 1:num
    str = input('Enter Stock name: ', 's');
    name(n, :) = str(:);
    
    p = input('Enter your purchase price: $');
    price(n,1) = p;
    
    y = input('Enter your purchased year: ');
    m = input('Enter your purchased month: ');
    d = input('Enter your purchased day: ');
    purchase(n,1) = y;
    purchase(n,2) = m;
    purchase(n,3) = d;
    
    y = input('Enter your start year: ');
    m = input('Enter your start month: ');
    d = input('Enter your start day: ');
    date(n,1) = y;
    date(n,2) = m;
    date(n,3) = d;
    
    y = input('Enter your end year: ');
    m = input('Enter your end month: ');
    d = input('Enter your end day: ');
    endDate(n,1) = y;
    endDate(n,2) = m;
    endDate(n,3) = d;
end 

end