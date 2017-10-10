clc;
clear all;
close all;
load mandrill   % Load the mandrill image
I=ind2gray(X,map);  % Displays the grey image
I=I(1:128,120:120+256-1);
figure
Ib=fft2(I).*exp(j*2*pi*rand(128,256))   % Crop the mandrill image to required dimensions
Ib=real(ifft2(Ib));     % Inverse FFT
Ib=imshow(mat2gray(Ib))     
title('magnitude plot');
figure
If=fft2(I)./abs(fft2(I))    % Element wise division amplitude function
If=real(ifft2(If))
If=imshow(mat2gray(If))
title('phase plot');
%% Using Low pass filter1
load hlp1.mat
Z=filter2(h,I);
figure
imshow(I);
imshow(mat2gray(Z));
%% Using Low pass filter2
load hlp2.mat
Z=filter2(h,I);
figure
imshow(I);
imshow(mat2gray(Z));
%% Using High pass filter1
load hhp1.mat
Z=filter2(h,I);
figure
imshow(I);
imshow(mat2gray(Z));
%% Using High pass filter2
load hhp2.mat
Z=filter2(h,I);
figure
imshow(I);
imshow(mat2gray(Z));
%% Using Undefined filter
load hk.mat
Z=filter2(h,I);
figure
imshow(I);
imshow(mat2gray(Z));
