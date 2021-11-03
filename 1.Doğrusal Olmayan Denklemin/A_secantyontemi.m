clc;clear;close all;
disp('Fonksiyonu giriniz'),f_str = input('','s');
f = str2func(['@(x)' f_str]);
disp('x(0) deðerini giriniz'),x0 = input('');
disp('x(1) deðerini giriniz'),x1 = input('');
disp('ebag deðerini giriniz'),min_ebag = input('');
disp('iter No.    x(i)          epsilon');
iter = 0;
ebag = 1;
xg = x0;
xi = x1;
maxiter = 200;

dif_sym = diff(f,x);
dif = matlabFunction(dif_sym);

for i = 1:maxiter
    
    %xiter = xi - ((f(xi)/dif(xi))*(xg - xi))/((f(xg)/dif(xg)-(f(xi)/dif(xi))));
    %katlý kök varsa üstteki '%' iþaretini kaldýr alttaki xiterin baþýna '%' getir  
    xiter = xi - (f(xi)*(xg-xi))/(f(xg)-f(xi));
    ebag = abs((xiter - xi));
    fprintf('   %d        %.4f        %.4f   \n',i,xi,ebag);
    xg = xi;
    xi = xiter;
    if ebag < min_ebag
        break
    end
end