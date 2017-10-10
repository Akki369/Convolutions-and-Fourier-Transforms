clc;
clear all;
close all;
%% Given specifications
N1=64;
N2=64;
w1=[2*pi*8/64 2*pi*16/64];
w2=[2*pi*8.5/64 2*pi*16.5/64];
n1=(0:N1-1)'*ones(1,N2);
n2=ones(N1,1)*(0:N2-1);
x1=cos(w1(1)*n1+w1(2)*n2);
x2=cos(w2(1)*n1+w2(2)*n2);
X1=fft2(x1);    %2d FFT
ax=-pi:2*pi/63:pi;
%% Plotting 2d DFT of the cosine signal
figure
colormap('default');
mesh(ax,ax,20*log10(abs((X1))));
xlabel('w1');
ylabel('w2');
X2=fft2(x2);    %2d FFT
ax=-pi:2*pi/63:pi;
figure
colormap('default');
mesh(ax,ax,20*log10(abs((X2))));
xlabel('w1');
ylabel('w2');
figure
subplot(2,1,1)
imshow(x1);
subplot(2,1,2)
imshow(x2)



