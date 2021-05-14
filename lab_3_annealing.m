clear all
close all
clc
%establishing data points, y axis is grain size, x axis is %CW
y_parallel = [0.78125 0.525 1.075 0.925 0.9 1.225 1.625];
y_transverse = [0.71875 0.550 1.15 0.925 0.850 1.1 1.475];


x_annealingtime = [0.5 2 5 10 15 60 720];

%plot values
 figure (1), plot(x_annealingtime,y_parallel, 'DisplayName', 'Average Parallel Grain Size', 'Color','#5D3A9B')
title('Average Grain Size and Aspect Ratio vs. Time Spent Annealing')
xlabel('Time Spent Annealing [Minutes]')
ylabel('Average Grain Size [\mum]')
xlim ([0 720])
ylim ([0 2])

set(gca, 'XScale', 'log')

grid on
grid minor
hold on
plot (x_annealingtime,y_transverse, 'DisplayName', 'Average Transverse Grain Size','Color','#40B0A6')
%hold on
%plot (x_annealingtime,y_aspectratio, 'DisplayName', 'Average Grain Aspect Ratio','Color','#E66100')
%hold on
%plot (Tstrain_drawn, Tstress_drawn, 'DisplayName', 'First Drawn True Stress v.s. Strain','Color','#5D3A9B')
legend
hold off