clc
clear;
I1 = imread('InputImages/test4.jpg');
I2 = imread('OutputImages/test4.jpg');
[PSNR,MSE]=Compute_MSE_PSNR(I1,I2);
disp(PSNR);
disp(MSE);
I = rgb2hsv(I2);
gray=I(:,:,3)*256;
res1 = imgentropy(gray);
disp(res1);