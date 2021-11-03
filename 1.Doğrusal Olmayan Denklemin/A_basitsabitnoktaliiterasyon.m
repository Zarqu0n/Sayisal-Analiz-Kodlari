clc;close all;clear;
disp('Fonksiyonu f(x) = g(x) + x şeklinden x = f(x)-g(x) şekline getirerek giriniz'),f = input('','s');
f = str2func(['@(x)' f]);
disp('x(0) değerini giriniz'),x1 = input('');
disp('ebag değerini giriniz'),min_ebag = input('');
disp('iter No.     x(i)          epsilon');
iter = 0;
ebag = 1;
xi = x1;

while ebag > min_ebag
    iter = iter +1;
    xiter = f(xi);
    ebag = abs((xiter - xi)/xiter)*100;
    fprintf('   %d        %.4f        %.4f   \n',iter,xiter,ebag);
    xi = xiter;
end