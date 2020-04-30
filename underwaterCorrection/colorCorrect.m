function ccI = colorCorrect(I,dark,t)
%colorCorrect ��ɫ��������
%   I-ԭͼ��dark-��ͨ������ͼ��t-͸����ͼ��
%   ccI-��ɫ������ͼ��
% ����Ainc��Wc�Ȳ���
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

