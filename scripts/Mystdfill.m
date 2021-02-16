function [ output_args] = Mystdfill( input_args )
%UNTITLED2 Summary of this function goes here
%   plot mean and std 
%   row: different data set; column: recording; it is assumed here column
%   is bigger than row

[row, column] = size(input_args);

c_value = [192/255 192/255 192/255]; %color

if row > column 
    input_args = input_args';
    column = row;
end

value_mean = mean(input_args);
value_std = std(input_args);
output_args=sum(value_mean)/126;
%output_args1=sqrt(sum(input_args.^2)./length(input_args)); %RMS��Root Mean Square��������

up = value_mean + value_std;
down = value_mean - value_std;

x = 1: column;
yForFill=[up,fliplr(down)];
xForFill=[x,fliplr(x)];

 subplot(2,5,6);
 fill(xForFill,yForFill, c_value,'FaceAlpha',1,'EdgeAlpha',1,'EdgeColor',c_value);
hold on
 %a=0:20:2500;
 plot(value_mean,'LineWidth',2);
 
 xlim([0,1500]);
 ylim([0,0.4]);
 set(gca,'FontName','Times New Roman','FontSize',16);  %���������������С������
%ϸ������
set(get(gca,'title'),'FontSize',20,'FontName','Times New Roman');%���ñ��������С������
set(get(gca,'XLabel'),'FontSize',16,'FontName','Times New Roman');%����X������������С������
set(get(gca,'YLabel'),'FontSize',16,'FontName','Times New Roman');%����Y������������С������


end

