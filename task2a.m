clc;
clear all;
close all;
%% Given specifications
N1=8;
N2=8;
x=ones(N1,N2);
F1= zeros(N1);
F2=zeros(N2);
for k1=1:N1
    for n1=1:N1
        F1(k1,n1)=exp((-j*2*pi/N1)*(k1-1)*(n1-1));
    end
end
for k2=1:N2
    for n2=1:N2
        F2(k2,n2)=exp((-j*2*pi/N2)*(k2-1)*(n2-1));
    end
end
tic    % Gives the appropriate time taken to done
X=F1*x*F2   % 2d DFT 
toc
tic
X1=fft2(x)  % 2d FFT
toc
display(abs(X));
display(X1);

