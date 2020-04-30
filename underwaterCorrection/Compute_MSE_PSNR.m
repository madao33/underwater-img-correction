function [PSNR, MSE] = Compute_MSE_PSNR(Ref_img, goal_img)%输入图像为参考图像和要计算MSE和PSNR的图像，输出为PSNR和MSE
Ref_img=double(Ref_img);
goal_img=double(goal_img);
if nargin<2
    Ref_img=goal_img;
else
    if any(size(Ref_img)~=size(goal_img))%判断两个图像的大小是否相同
        error('The input size is not equal to each other!');%如果不同 报错“俩图像大小不同”
    end
     img_diff = Ref_img-goal_img;%两个图像转换为double类型做差分，相减
end
%
MSE=sum(img_diff(:).^2)/numel(goal_img);%numel函数结果即为图像长*宽  也就是像素总数
PSNR=10*log10(255^2/MSE);