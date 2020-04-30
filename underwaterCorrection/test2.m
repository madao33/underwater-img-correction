clc;
clear all;
ccI = imread("OutputImages\ccI.jpg");
ccI = im2double(ccI);
hsv = rgb2hsv(ccI);

[vcI,hsv2] = VignettingCorrect(ccI);
temp = hsv2(:,:,3);
figure(1)
subplot(221),imshow(ccI),title("去渐晕前图像");
subplot(222),imshow(hsv(:,:,3)),title("V通道渐晕");
subplot(223),imshow(vcI),title("去渐晕后图片");
subplot(224),imshow(hsv2(:,:,3)),title("V通道去渐晕");