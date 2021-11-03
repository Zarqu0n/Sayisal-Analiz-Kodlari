clc;clear;close all;
A = [5 3 -1;
    1 7 3;
    2 -1 4];
y = [3;5;11];
x0 = [1 0 1];

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
        fprintf('        %.4f',x(i,k))
    end
fprintf('    \n');
x0 = x(i,:);
end