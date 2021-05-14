clear all
close all
clc
%establishing data points, y axis is grain size, x axis is %CW
y_parallel = [5.625 6.225 10.475 11.65];
y_transverse = [6.5 5.225 5.4 5.975];
y_aspectratio = [0.865 1.191 1.940 1.950];

x_coldwork = [0 10.55 31.59 41.31];

%plot values
 figure (1), plot(x_coldwork,y_parallel, 'DisplayName', 'Average Parallel Grain Size', 'Color','#5D3A9B')
title('Average Grain Size and Aspect Ratio vs. % Cold Work')
xlabel('% Cold Work')
ylabel('Average Grain Size [\mum]')
xlim ([0 42])
ylim ([0 12])
grid on
grid minor
hold on
plot (x_coldwork,y_transverse, 'DisplayName', 'Average Transverse Grain Size','Color','#40B0A6')
hold on
plot (x_coldwork,y_aspectratio, 'DisplayName', 'Average Grain Aspect Ratio','Color','#E66100')
%hold on
%plot (Tstrain_drawn, Tstress_drawn, 'DisplayName', 'First Drawn True Stress v.s. Strain','Color','#5D3A9B')
legend
hold off