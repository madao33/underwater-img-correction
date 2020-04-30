function [vcI,hsv2] = VignettingCorrect(I)
%VignettingCorrect È¥³ý½¥ÔÎ
%   I-ÊäÈëÍ¼Ïñ
%   cvI-È¥³ý½¥ÔÎµÄÍ¼Ïñ
hsv = rgb2hsv(I);
[m,n,~]=size(hsv);
hsv2 = zeros(size(hsv));
hsv2(:,:,1:2)=hsv(:,:,1:2);
x0 = m/2;
y0 = n/2;
a=0.1;
b=0.01;
c=0.1;
r0 = x0^2+y0^2;
disp(r0);
maxV = 0;
r2temp = zeros(m,n);
for i=1:m
    for j=1:n
        r2 = power((i-x0),2)+power((j-y0),2);
        r2 = r2/r0;
        r2temp(i,j) = r2;
        Gr = 1 + r2*(a+r2*(b+c*r2));
        hsv2(i,j,3)=Gr*hsv(i,j,3);
        maxV = max(hsv2(i,j,3), maxV);
    end
end
figure(2)
subplot(121),imshow(hsv2(:,:,3)/maxV);
subplot(122),imshow(r2temp);
hsv2(:,:,3) = hsv2(:,:,3)/maxV;
vcI = hsv2rgb(hsv2);
end

