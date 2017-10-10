clc;
clear all;
close all;
% load hbp.mat
% load hbrus.mat
% load hhp1.mat 
% load hhp2.mat
% load hk.mat
 load hlp1.mat      % Low pass filter is efficient
% load hlp2.mat
X=fft2(h,64,64);    % 2d FFT
ax=-pi:2*pi/63:pi;
colormap('default');
mesh(ax,ax,20*log10(abs(fftshift(X'))+0.01));
xlabel('w1');
ylabel('w2');
 