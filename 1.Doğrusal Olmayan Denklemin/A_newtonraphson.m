clc;clear;close all;
syms x;
disp('Fonksiyonu giriniz'),f_str = input('','s');
f = str2func(['@(x)' f_str]);
disp('x(0) de�erini giriniz'),x1 = input('');
disp('ebag de�erini giriniz'),min_ebag = input('');
disp('iter No.      x(i)          epsilon');
iter = 0;
ebag = 1;
xi = x1;
maxiter = 200;
dif_sym = diff(f,x);
dif = matlabFunction(dif_sym);

dif_sym2 = diff(dif,x);
dif2 = matlabFunction(dif_sym2);
for i = 1:maxiter
    %xiter = xi - (f(xi)*dif(xi))/(dif(xi)^2-f(xi)*dif2(xi));
    %katl� k�k varsa �stteki '%' i�aretini kald�r alttaki xiterin ba��na '%' getir  
    xiter = xi - (f(xi)/dif(xi));
    ebag = abs((xiter - xi));
    fprintf('   %d        %.4f        %.4f   \n',i,xiter,ebag);
    xi = xiter;
    if ebag < min_ebag
        break
    end
end