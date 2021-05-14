%plot the supplied points on a graph and create a lone of best fit
clear all
close all
clc
%proof stress will be on the y axis(1-4)
%.%cold work will be on the x axis (1-4)

%15
x1 = [60.4 37.1 20.6 11.1 0];   
y1 = [482 444 378 304 192];    

%70
x2 = [60.4 37.1 20.6 11.1 0];
y2 = [413 359 284 216 123];

figure (1)

scatter(x1, y1,'*','MarkerEdgeColor',[0.3633 0.2266 0.6055],...
              'MarkerFaceColor',[0.3633 0.2266 0.6055],...
              'LineWidth',1.5)
hold on

%line of best fit for 15 data values
p15 = polyfit (x1, y1, 2);
f15 = polyval (p15, x1);


plot(x1, f15,'r--' ,'Color','#E66100', 'Linewidth',1.5)

hold on


scatter (x2, y2, '*', 'MarkerEdgeColor',[0.25 0.6875 0.6484],...
              'MarkerFaceColor',[0.25 0.6875 0.6484],...
              'LineWidth',1.5)

          %line of best fit for 70 data values
p70 = polyfit (x2, y2, 2);
f70 = polyval (p70, x1);


plot(x1, f70,'r--' ,'Color','#E1BE6A', 'Linewidth',1.5)

hold on

title('0.1% Proof Stress vs. % Cold Work')
xlabel('% Cold Work [%]')
ylabel('0.1% Proof Stress [MPa]')
legend({'15\mum data points', 'Line of Best Fit for 15\mum data set', '70\mum data points','Line of Best Fit for 70\mum data set '});
grid on
grid minor


hold off