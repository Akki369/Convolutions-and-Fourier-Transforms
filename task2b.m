clc;
clear all; 
close all;
%% Given specifications
N1=8;
N2=8;
x=ones(N1,N2);
X=fft2(x,64,64);    %2d FFT
ax=-pi:2*pi/63:pi;
%% Plotting 3 dimensions using fourier transform of 2D window 
colormap('default');
mesh(ax,ax,20*log10(abs(fftshift(X'))+0.01));   % Constant 0.01 will render a floor at -40db
xlabel('w1');
ylabel('w2');
colormap(jet(64))
figure
imagesc(20*log10(abs(fftshift(X'))+0.01))   % Will put the origin of frequency in the center
colorbar
figure
colormap('default') % Display the default image
load hhp1
Hf=20*log(abs(fftshift(fft2(h,64,64)))+0.01)./2.303;
ax=pi:(2*pi)/63:pi;
figure
mesh(ax,ax,n);
Z=filter2(h,In);
figure
imshow(mat2gray(Z));