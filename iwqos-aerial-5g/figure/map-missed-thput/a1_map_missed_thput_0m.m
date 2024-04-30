clc;clear;
M=readmatrix('all_grid_cellset_thput_gap_1214-0213_0_0.0005_1_0_a1.csv');
if length(M) == 0
    return 
end

xmax = 40.4695;
xmin = 40.4595;
ymin = -86.9205;
ymax = -86.909;
x_lim = [xmin xmax];
y_lim = [ymin ymax];

scatter(M(:,2)', M(:,1)', 200, M(:,20), 'square', 'filled');
set(gca,'Fontsize', 40)
%threshold_colormap = 40;
threshold_colormap = 60;
%colormap_max = max(y);
colormap_max = 60;
oldmap = parula;
newmap = 0*oldmap;
tmp = oldmap(1:round(colormap_max/threshold_colormap):end,:);
newmap(1:size(tmp,1),:) = tmp;
newmap(size(tmp,1)+1:end,:) = repmat(tmp(end,:), size(oldmap,1)-size(tmp,1),1);
colormap(newmap);
ylabel('')
xlabel('')
h = colorbar;
% ylabel(h, 'Mbps')
yticklabels({})
xticklabels({})
xlim(x_lim)
ylim(y_lim)
caxis([0 60])
%a1 = h.TickLabels;
%a1{end,1} = ['>', a1{end,1}];
%a1{1,1} = ['<', a1{1,1}];
%h.TickLabels = a1;
x0=10;
y0=10;
width=238 * 1.25 * 1.3;
%width=238 * 1.25 * 1;
height=238 * 1.25;
set(gcf,'position',[x0,y0,width,height])
set(gca, 'LooseInset', [0,0,.25,0]);
%set(gca, 'LooseInset', [0,0,0,0]);
set(gca,'Visible','off')
set(gcf,'color','none');
set(gca,'color','none');
%colorbar off
colorbar('FontSize',24,'position',[.8 .05 .05 .9])
saveas(gca, 'a1-map-thput-60m.eps','epsc')