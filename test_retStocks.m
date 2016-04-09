clear;
clc;
format long;
import retStocks.*

stockNames = ['GOOG';'YHOO';'^DJI';'IBM ';];
startDate = [2014,1,1];
endDate = [2016,1,1];

[stockNames, data] = retStocks(stockNames, startDate, endDate);

z=data(1,2,3);
% 1/1/2014 DJI 
