clc;close all;clear;
disp('Fonksiyonu giriniz'),f_str = input('','s');
f = str2func(['@(x)' f_str]);
disp('Delta deðerini giriniz'),delta = input('');
disp('x(1) deðerini giriniz'),x1 = input('');
disp('ebag deðerini giriniz'),min_ebag = input('');
disp('iter No.    x(i)          epsilon');
iter = 0;
ebag = 1;
xi = x1;
maxiter = 50;
for i = 1:maxiter
    
    xiter = xi - (f(xi)*xi*delta)/(f(xi + delta*xi)-f(xi));
    ebag = abs((xiter - xi));
    fprintf('   %d        %.4f        %.4f   \n',i,xi,ebag);
    xi = xiter;
    if ebag < min_ebag
        break
    end
    
end