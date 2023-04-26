clear size;
delta=1; %5  %sample
nodenum=9;
leaderNum=3;
followernum=6;
km=1;
%red [244,126,98] blue [111,128,190]  
%backgr of red [252,199,188] backgr of blue [189,192,233]
leadercolor=[244,126,98]/255;
followercolor=[111,128,190]/255;
followerbacgcolor=[189,192,233]/255;
linewith=2;
transP=0.5;

neighborMat=zeros(nodenum,nodenum);
neighborMat(1,2)=1;neighborMat(1,3)=1;neighborMat(1,8)=1;neighborMat(1,9)=1;
neighborMat(2,4)=1;neighborMat(2,7)=1;
neighborMat(3,5)=1;neighborMat(3,6)=1;neighborMat(3,4)=1;neighborMat(2,5)=1;
neighborMat(4,5)=1;neighborMat(4,6)=1;neighborMat(2,7)=1;neighborMat(4,7)=0;
neighborMat(5,7)=1;neighborMat(5,8)=0;neighborMat(5,6)=0;
neighborMat(6,7)=1;neighborMat(6,8)=1;
neighborMat(7,9)=1;
neighborMat(8,9)=1;
m=sum(sum(neighborMat)); % number of edges
neighborMat=neighborMat+neighborMat';


error_all_4=out.ex4.data(1:delta:end,:);
error_all_5=out.ex5.data(1:delta:end,:);
error_all_6=out.ex6.data(1:delta:end,:);
error_all_7=out.ex7.data(1:delta:end,:);
error_all_8=out.ex8.data(1:delta:end,:);
error_all_9=out.ex9.data(1:delta:end,:);
p_all=out.p_all.data(1:delta:end,:);
dataNum=size(p_all); %N*L

figure;
set(gcf, 'unit', 'norm', 'pos', [0.1,0.1,0.5,0.66])
hAxisTraj=subplot(4,1,1:3);
hold on; box on; axis equal
set(gca, 'xlim',[-7 10])
set(gca, 'ylim', [-7 7])
axis([-7,25,-7,7])
%plot positions or trajectories.

%4
p4x=p_all(1:end,7);
p4y=p_all(1:end,8);
%errorbar(p4x,p4y,error_all_4,'color',[0,0,0]);
xdata4=[p4x',flip(p4x')];
ydata4=[p4y'+km*abs(error_all_4'),flip(p4y'-km*abs(error_all_4'))];
h4=fill(xdata4,ydata4,followerbacgcolor);
%plot(p4x,p4y,'-','color',[0,0,0],'linewidth',1)
%set(h1,'edgecolor','white')  %remove the edge

%5
p5x=p_all(1:end,9);
p5y=p_all(1:end,10);
%errorbar(p4x,p4y,error_all_4,'color',[0,0,0]);
xdata5=[p5x',flip(p5x')];
ydata5=[p5y'+km*abs(error_all_5'),flip(p5y'-km*abs(error_all_5'))];
h5=fill(xdata5,ydata5,followerbacgcolor);
%plot(p5x,p5y,'-','color',[0,0,0],'linewidth',1)
%set(h5,'edgecolor','white')  %remove the edge

%6
p6x=p_all(1:end,11);
p6y=p_all(1:end,12);
%errorbar(p4x,p4y,error_all_4,'color',[0,0,0]);
xdata6=[p6x',flip(p6x')];
ydata6=[p6y'+km*abs(error_all_6'),flip(p6y'-km*abs(error_all_6'))];
h6=fill(xdata6,ydata6,followerbacgcolor);
%plot(p6x,p6y,'-','color',[0,0,0],'linewidth',1)
%set(h6,'edgecolor','white')  %remove the edge

%7
p7x=p_all(1:end,13);
p7y=p_all(1:end,14);
%errorbar(p4x,p4y,error_all_4,'color',[0,0,0]);
xdata7=[p7x',flip(p7x')];
ydata7=[p7y'+km*abs(error_all_7'),flip(p7y'-km*abs(error_all_7'))];
h7=fill(xdata7,ydata7,followerbacgcolor);
%plot(p7x,p7y,'-','color',[0,0,0],'linewidth',1)
%set(h7,'edgecolor','white')  %remove the edge

%8
p8x=p_all(1:end,15);
p8y=p_all(1:end,16);
%errorbar(p4x,p4y,error_all_4,'color',[0,0,0]);
xdata8=[p8x',flip(p8x')];
ydata8=[p8y'+km*abs(error_all_8'),flip(p8y'-km*abs(error_all_8'))];
h8=fill(xdata8,ydata8,followerbacgcolor);
%plot(p8x,p8y,'-','color',[0,0,0],'linewidth',1)
%set(h8,'edgecolor','white')  %remove the edge

%9
p9x=p_all(1:end,17);
p9y=p_all(1:end,18);
%errorbar(p4x,p4y,error_all_4,'color',[0,0,0]);
xdata9=[p9x',flip(p9x')];
ydata9=[p9y'+km*abs(error_all_9'),flip(p9y'-km*abs(error_all_9'))];
h9=fill(xdata9,ydata9,followerbacgcolor);
%plot(p9x,p9y,'-','color',[0,0,0],'linewidth',1)
%set(h9,'edgecolor','white')  %remove the edge
set(h4,'edgealpha',0,'facealpha',transP)
set(h5,'edgealpha',0,'facealpha',transP)
set(h6,'edgealpha',0,'facealpha',transP)
set(h7,'edgealpha',0,'facealpha',transP)
set(h8,'edgealpha',0,'facealpha',transP)
set(h9,'edgealpha',0,'facealpha',transP)

p1x=p_all(1:end,1);
p1y=p_all(1:end,2);
p2x=p_all(1:end,3);
p2y=p_all(1:end,4);
p3x=p_all(1:end,5);
p3y=p_all(1:end,6);


plot(p1x,p1y,'-','color',leadercolor,'linewidth',linewith)
plot(p2x,p2y,'-','color',leadercolor,'linewidth',linewith)
plot(p3x,p3y,'-','color',leadercolor,'linewidth',linewith)
plot(p4x,p4y,'-','color',followercolor,'linewidth',linewith)
plot(p5x,p5y,'-','color',followercolor,'linewidth',linewith)
plot(p6x,p6y,'-','color',followercolor,'linewidth',linewith)
plot(p7x,p7y,'-','color',followercolor,'linewidth',linewith)
plot(p8x,p8y,'-','color',followercolor,'linewidth',linewith)
plot(p9x,p9y,'-','color',followercolor,'linewidth',linewith)


%t=0
zhen=1;
hLine=zeros(nodenum,nodenum);
for i=1:nodenum
    for j=i+1:nodenum
        if neighborMat(i,j)==1
            pi=p_all(zhen,2*i-1:2*i)';
            pj=p_all(zhen,2*j-1:2*j)';
            hLine(i,j)=line([pi(1),pj(1)], [pi(2),pj(2)], 'linewidth', linewith, 'color', [0,0,0]);
        end
    end
end
hMarker=zeros(1,nodenum);
hText=zeros(1,nodenum);

for i=1:nodenum
    xi=p_all(zhen,2*i-1);
    yi=p_all(zhen,2*i);
    if i<4
        hMarker(i) = plot(xi, yi, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', leadercolor, 'markersize', 10, 'linewidth', 1);
    end
    if i>=4
        hMarker(i) = plot(xi, yi, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', followercolor, 'markersize', 10, 'linewidth', 1);
    end
    hText(i)=text(xi, yi, num2str(i),'color', [1,1,1], 'FontSize', 8, 'horizontalAlignment', 'center', 'FontWeight', 'bold');
    %hLegend=legend([hMarker(1),hMarker(leaderNum+1)], 'Leader', 'Follower', 'location', 'southwest');
end

% %t=mid
% zhen=2500;
% hLine=zeros(nodenum,nodenum);
% for i=1:nodenum
%     for j=i+1:nodenum
%         if neighborMat(i,j)==1
%             pi=p_all(zhen,2*i-1:2*i)';
%             pj=p_all(zhen,2*j-1:2*j)';
%             hLine(i,j)=line([pi(1),pj(1)], [pi(2),pj(2)], 'linewidth', linewith, 'color', [0,0,0]);
%         end
%     end
% end
% hMarker=zeros(1,nodenum);
% hText=zeros(1,nodenum);
% for i=1:nodenum
%     xi=p_all(zhen,2*i-1);
%     yi=p_all(zhen,2*i);
%     if i<4
%         hMarker(i) = plot(xi, yi, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', leadercolor, 'markersize', 10, 'linewidth', 1);
%     end
%     if i>=4
%         hMarker(i) = plot(xi, yi, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', followercolor, 'markersize', 10, 'linewidth', 1);
%     end
%     %hMarker(i) = plot(xi, yi, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'r', 'markersize', 10, 'linewidth', 1);
%     hText(i)=text(xi, yi, num2str(i),'color', [1,1,1], 'FontSize', 8, 'horizontalAlignment', 'center', 'FontWeight', 'bold');
% end
% 

%t=ends
zhen=5000;
hLine=zeros(nodenum,nodenum);
for i=1:nodenum
    for j=i+1:nodenum
        if neighborMat(i,j)==1
            pi=p_all(zhen,2*i-1:2*i)';
            pj=p_all(zhen,2*j-1:2*j)';
            hLine(i,j)=line([pi(1),pj(1)], [pi(2),pj(2)], 'linewidth', linewith, 'color', [0,0,0]);
        end
    end
end
hMarker=zeros(1,nodenum);
hText=zeros(1,nodenum);
for i=1:nodenum
    xi=p_all(zhen,2*i-1);
    yi=p_all(zhen,2*i);
    if i<4
        hMarker(i) = plot(xi, yi, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', leadercolor, 'markersize', 10, 'linewidth', 1);
    end
    if i>=4
        hMarker(i) = plot(xi, yi, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', followercolor, 'markersize', 10, 'linewidth', 1);
    end
    %hMarker(i) = plot(xi, yi, 'o', 'MarkerEdgeColor', 'k', 'MarkerFaceColor', 'r', 'markersize', 10, 'linewidth', 1);
    hText(i)=text(xi, yi, num2str(i),'color', [1,1,1], 'FontSize', 8, 'horizontalAlignment', 'center', 'FontWeight', 'bold');
end
hLegend=legend([hMarker(1),hMarker(leaderNum+1)], 'Leader', 'Follower', 'location', 'northwest');
