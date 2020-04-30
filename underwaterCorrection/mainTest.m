clc;
clear;

%% �ļ���ȡ
path = "InputImages/";
files = dir(fullfile(path, '*.jpg'));

% for findex = 1:length(files)
%     disp(files(findex).folder + "/" + files(findex).name);
% end
% ѡ��ͼƬ�����Եڶ���Ч��������
% index = 2;
% fileTest = files(index).folder+ "/" + files(index).name;
fileTest = 'InputImages/test4.jpg';
I = imread(fileTest);
I = im2double(I);
% disp(I);
% ԭͼ��
% figure(1)
% imshow(I);

%% ��ɫУ��
Wnd=15; %�������ڴ�С
% ��ȡ��ͨ������ͼƬ
dark = Idark(I, Wnd);
% imwrite(dark,"OutputImages\dark.jpg"); 

% ���ݰ�ͨ������ͼƬ����ȡ͸����
t = getTransmissivity(I,Wnd, dark);
% imwrite(t,"OutputImages\t.jpg"); 
% ����͸���ʻ�ȡˮ�¸�ԭͼ
ccI = colorCorrect(I,dark,t);
imwrite(ccI,'OutputImages/test4.jpg');
% figure(1)
% subplot(221),imshow(I),title("原图");
% subplot(222),imshow(dark),title("暗通道");
% subplot(223),imshow(t),title("透射率");
% subplot(224),imshow(ccI),title("校正后图像");

% figure(1)
% subplot(121),imshow(I),title("原图");
% subplot(122),imshow(ccI),title("校正后图像");







