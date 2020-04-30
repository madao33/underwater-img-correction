clc;
clear all;
ccI = imread("OutputImages\ccI.jpg");
ccI = im2double(ccI);
hsv = rgb2hsv(ccI);

[vcI,hsv2] = VignettingCorrect(ccI);
temp = hsv2(:,:,3);
figure(1)
subplot(221),imshow(ccI),title("ȥ����ǰͼ��");
subplot(222),imshow(hsv(:,:,3)),title("Vͨ������");
subplot(223),imshow(vcI),title("ȥ���κ�ͼƬ");
subplot(224),imshow(hsv2(:,:,3)),title("Vͨ��ȥ����");