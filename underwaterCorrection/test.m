%% ����ֱ��ͼ�����ˮ��ͼ��ԭ
% �����ο��Ա�
%% ��������
clear;
%�˴��޸�Ҫ����ͼƬ��·����ͼƬ��
t = imread('InputImages/test2.jpg');  
I=t(:,:,1);
[height,width] = size(I);  
subplot(121);
imshow(t),title('ԭʼͼ��')%��ʾԭʼͼ��   
%��Rͨ�����о��⻯�������⻯����дһ��ͳһ�ĺ�����ֱ�ӵ���
%�������ػҶ�ͳ��;  
s = zeros(1,256);%ͳ�Ƹ��Ҷ���Ŀ����256���Ҷȼ�  
%����ֱ��ͼ
gp=zeros(1,256);
for k=0:255
    gp(k+1)=length(find(I==k))/(height*width);
end
for i = 1:height  
    for j = 1: width  
        s(I(i,j) + 1) = s(I(i,j) + 1) + 1;%��Ӧ�Ҷ�ֵ���ص���������һ  
    end  
end  
%����Ҷȷֲ��ܶ�  
p = zeros(1,256);  
for i = 1:256  
    p(i) = s(i) / (height * width * 1.0);  
end  
%�����ۼ�ֱ��ͼ�ֲ�  
c = zeros(1,256);  
c(1) = p(1);
for i = 2:256   
        c(i) = c(i - 1) + p(i);  
end  
%�ۼƷֲ�ȡ��,������ֵ��һ��Ϊ1~256 
c = uint8(255 .* c + 0.5);  
%��ͼ����о��⻯
for i = 1:height  
    for j = 1: width  
        Ir(i,j) = c(I(i,j)+1);  
    end  
end  
dis(:,:,1)=Ir;
%subplot(122)  
%imshow(Ir)%��ʾ���⻯���ͼ��
%��Gͨ�����о��⻯�������⻯����дһ��ͳһ�ĺ�����ֱ�ӵ���
I=t(:,:,2);
[height,width] = size(I);  
%����ʹ��ֱ��ͼ���⻯���д���
%�������ػҶ�ͳ��;  
s = zeros(1,256);%ͳ�Ƹ��Ҷ���Ŀ����256���Ҷȼ�  
%����ֱ��ͼ
gp=zeros(1,256);
for k=0:255
    gp(k+1)=length(find(I==k))/(height*width);
end
for i = 1:height  
    for j = 1: width  
        s(I(i,j) + 1) = s(I(i,j) + 1) + 1;%��Ӧ�Ҷ�ֵ���ص���������һ  
    end  
end  
%����Ҷȷֲ��ܶ�  
p = zeros(1,256);  
for i = 1:256  
    p(i) = s(i) / (height * width * 1.0);  
end  
%�����ۼ�ֱ��ͼ�ֲ�  
c = zeros(1,256);  
c(1) = p(1);
for i = 2:256   
        c(i) = c(i - 1) + p(i);  
end  
%�ۼƷֲ�ȡ��,������ֵ��һ��Ϊ1~256 
c = uint8(255 .* c + 0.5);  
%��ͼ����о��⻯
for i = 1:height  
    for j = 1: width  
        Ig(i,j) = c(I(i,j)+1);  
    end  
end  
%subplot(122)  
%imshow(Ig)%��ʾ���⻯���ͼ��
dis(:,:,2)=Ig;
%��Bͨ�����о��⻯�������⻯����дһ��ͳһ�ĺ�����ֱ�ӵ���
I=t(:,:,3);
[height,width] = size(I);  
%����ʹ��ֱ��ͼ���⻯���д���
%�������ػҶ�ͳ��;  
s = zeros(1,256);%ͳ�Ƹ��Ҷ���Ŀ����256���Ҷȼ�  
%����ֱ��ͼ
gp=zeros(1,256);
for k=0:255
    gp(k+1)=length(find(I==k))/(height*width);
end
for i = 1:height  
    for j = 1: width  
        s(I(i,j) + 1) = s(I(i,j) + 1) + 1;%��Ӧ�Ҷ�ֵ���ص���������һ  
    end  
end  
%����Ҷȷֲ��ܶ�  
p = zeros(1,256);  
for i = 1:256  
    p(i) = s(i) / (height * width * 1.0);  
end  
%�����ۼ�ֱ��ͼ�ֲ�  
c = zeros(1,256);  
c(1) = p(1);
for i = 2:256   
        c(i) = c(i - 1) + p(i);  
end  
%�ۼƷֲ�ȡ��,������ֵ��һ��Ϊ1~256 
c = uint8(255 .* c + 0.5);  
%��ͼ����о��⻯
for i = 1:height  
    for j = 1: width  
        Ib(i,j) = c(I(i,j)+1);  
    end  
end  
dis(:,:,3)=Ib; 
%subplot(122)  
%imshow(Ib)%��ʾ���⻯���ͼ�� 
subplot(122);
imshow(dis),title('����֮���ͼ��')%��ʾ���⻯���ͼ��
% �˴��޸�Ϊ�Լ������ͼƬ·��
imwrite(dis,'OutputImages/test1.jpg');
