clc;
clear all;
close all;
%% Desired Input. 
x=ones(4,4);     % Assigning 4x4 ones matrix
h=[1 2 3 4;5 6 7 8];
y=conv2(h,x)   % 2D Convolution of x,h
y_fu=flipud(y)  % Flip the matrix up and down
y_fi=filter2(h,x)  %2d filtering and rotating 180 degrees
 %% Plotting
figure
subplot(4,1,1)
imshow(mat2gray(y)) %   Displays the gray image of convolution output 
title('convolution output')
subplot(4,1,2)
imshow(mat2gray(y_fu))  % Diplays the fliped up convolution output
title('fliped up convolution output')
subplot(4,1,3)
imshow(mat2gray(y_fi))  % Displays the gray image of filtered output
title('filtered output')
subplot(4,1,4)
imshow(ones(16,1)*(0:1/15:1))   % Displays the image having 16 level of grey
figure
load mandrill; % Loading the clown image
imshow(X,map)   % Displays monochrome image
figure
I=ind2gray(X,map);  % Displays the default image
imshow(I)
colormap('default')