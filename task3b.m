clc;
clear all;
close all;
% load hbp.mat
% load hbrus.mat
% load hhp1.mat
% load hhp2.mat
% load hk.mat
%% Using Low pass filter1
load hlp1.mat   % Loading Low pass filter1
% load hlp2.mat
load mandrill   % Loading mandrill image
I=ind2gray(X,map);
I=I(1:128,120:120+256-1);
N1=128;
N2=256;
w1= [2*pi*8/64 2*pi*16/64];
n1=(0:N1-1)'*ones(1,N2);
n2=ones(N1,1)*(0:N2-1);
x=cos(w1(1)*n1+w1(2)*n2);
I2=filter2(h,I+x);  % 2d filtering
%% Ploting the frequency Responce function of filter H
figure
subplot(3,1,1)
imshow(I)
title('Input image')
subplot(3,1,2)
imshow(mat2gray(I+x))
title('Noisy image')
subplot(3,1,3)
imshow(mat2gray(I2))
title('Filtered image')
