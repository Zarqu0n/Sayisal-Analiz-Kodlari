clc;clear;close all;
A = [3 4 -5;
    -2 -5 6;
    8 6 -5];
y = [6;4;10];
x0 = [1 -1 2];

maxiter = 50;
x = zeros(maxiter,size(A,1));

fprintf('itern No.',i); 
for l = 1:size(A,1)
    fprintf('       x(%d)',l);
end
fprintf('    \n');

for i = 1:maxiter   
fprintf('   %d',i);    
    for k = 1:size(A,1)
        for j = 1:size(A,1)
            if k~=j
                x(i,k) = x(i,k) + A(k,j)*x0(j);
            end
        end
        x(i,k) = (y(k) - x(i,k))/A(k,k);
        x0(k) = x(i,k);
        fprintf('        %.4f',x(i,k))
    end
fprintf('    \n');
end