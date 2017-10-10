clc;
clear all;
close all;
load mandrill   % Loading the mandrill image
% load hbp.mat
%% Using HBRUS filter
load hbrus.mat
%load hhp2.mat
%load hk.mat
%load hhp2.mat
I=ind2gray(X,map);
I=I(1:128,120:120+256-1);
N1=128;
N2=256;
n=filter2(h,rand(N1,N2));
load hlp1.mat   % Loading Low pass filter
I2=filter2(h,I+n);  % Using 2d filtering
%% Plotting Noisey and filtered image
figure
imshow(I)
title('input image')
figure
imshow(mat2gray(I+n))
title('Noisy image')
figure
imshow(mat2gray(I2))
title('Filtered image')
