clc; clear;close all;    
disp('Fonksiyonu giriniz'),f = input('','s');
disp('xalt değerini giriniz'),xalt = input('');
disp('xüst değerini giriniz'),xust = input('');
disp('ebag değerini giriniz'),min_ebag = input('');
disp('iter No.     xalt         xust        xkok(k)     epsilon');
f = str2func(['@(x)' f]);
iter = 0;
ebag = 1;

while ebag > min_ebag
    iter = iter +1;
    x_yeni_kok_tahmin = xust - (f(xust)*(xalt-xust))/(f(xalt)-f(xust));
    if f(x_yeni_kok_tahmin)*f(xalt) < 0
        xust = x_yeni_kok_tahmin;
        
    elseif f(x_yeni_kok_tahmin)*f(xalt) > 0
        xalt = x_yeni_kok_tahmin;
        
    elseif f(x_yeni_kok_tahmin)*f(xalt) == 0
        fpritnf('Kök tahmini yapılmıştır:%f',x_yeni_kok_tahmin);
        break
    end
    
    if iter > 1
        ebag = abs((x_yeni_kok_tahmin -  x_eski_kok_tahmin)/x_yeni_kok_tahmin)*100;
        fprintf('   %d        %.4f      %.4f     %.4f     %.4f   \n',iter,xalt,xust,x_yeni_kok_tahmin,ebag);
    end
    x_eski_kok_tahmin = x_yeni_kok_tahmin;
end


