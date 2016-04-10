%NOT FOR USE IN THE PROJECT
%Only used to test retStocks and show how it works
clear;
clc;
format long;
import retStocks.*

%These three matricies must have same size
stockNames = ['GOOG';'YHOO';'^DJI';'IBM ';];
startDate = [2014,1,1;2013,1,1;2014,1,1;2013,1,1];
endDate = [2016,1,1;2015,1,1;2016,1,1;2015,1,1];

[stockNames, data] = retStocks(stockNames, startDate, endDate);

z=data(1,2,3);
% Closing price 1/1/2014 DJI 
