function ccI = colorCorrect(I,dark,t)
%colorCorrect 颜色矫正函数
%   I-原图像，dark-暗通道先验图像，t-透射率图像
%   ccI-颜色矫正后图像
% 计算Ainc和Wc等参数
Ainc = 1-max(max(dark));
disp("Ainc, Wc:");
disp(Ainc);
t_mean = mean(mean(t));
t_max = max(max(t));
Wc = ones(1,3);
Wc(1) = 1 + t_mean/t_max;
disp(Wc(1));
[m,n,k]=size(I);
ccI = zeros(m,n,k);
for i=1:m
    for j=1:n
        for c=1:k
            ccI(i,j,c) = Wc(c)*( (I(i,j,c)-Ainc)/t(i,j))+Ainc;
        end
    end
end
end

