clc;close all;clear;
A = [2 -1 3;
    1 4 -3;
    -6 -2 9];

y = [4;-1;7];


AB = [A y];
[row,col] = size(AB);
ex_A = AB;
i = 1;
j = 1;
while ex_A(end,end-2) ~= 0

for k = i+1:row
   m = AB(k,j)/AB(i,j);
   for h = 1:col
       ex_A(k,h) = AB(k,h) - m*AB(i,h);
   end
end
i = i+1;
j = j+1;
AB = ex_A
end