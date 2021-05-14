%take engineering stress strain from excel spreadsheet
%store that as variables
%use equations from lecture 5 to get true stress and strain
%plot engineering stess vs true stress

%repeat for drawn, plot all 4 on the same axis
close all
clear all
clc

%note this is for undrawn specimen

%Reading tensile test excel spreadsheet to get engineering stress and
%strain values
Xdata = readtable('as suppliedgroup 7_16032021_102726.xlsx','Range','A2:L15699');
XnoRead = [1,2,3,4,5,6,7,8,9,10];
Xdata(:, XnoRead) = [];
XdataArray = table2array(Xdata);


%creates variables engineering stress and strain (as supplied)
 Estress_supplied = XdataArray(:,1)-0.017422;
% Estress_supplied = XdataArray(:,1) ;
 Estrain_supplied = 0.01 .* (XdataArray(:,2)-0.0000007);
% Estrain_supplied = 0.01 .* (XdataArray(:,2));
%calculate true stress and strain (formulas)[as supplied]

Tstress_supplied = Estress_supplied .*(1 + Estrain_supplied);
Tstrain_supplied = log(1 + Estrain_supplied);

%now get data for first drawn tensile test and do the same

%Reading tensile test excel spreadsheet to get engineering stress and
%strain values
XXdata = readtable('first draw3_16032021_112819.xlsx','Range','A2:L8299');
XXnoRead = [1,2,3,4,5,6,7,8,9,10];
XXdata(:, XXnoRead) = [];
XXdataArray = table2array(XXdata);


%creates variables engineering stress and strain (as supplied)
Estress_drawn = XXdataArray(:,1)-0.002065;
Estrain_drawn = 0.01 .*(XXdataArray(:,2)-0.00000434);
% Estress_drawn = XXdataArray(:,1);
% Estrain_drawn = 0.01 .*XXdataArray(:,2);
%calculate true stress and strain (formulas)[as supplied]

Tstress_drawn = Estress_drawn .*(1 + Estrain_drawn);
Tstrain_drawn = log(1 + Estrain_drawn);


 figure (1), plot(Estrain_supplied,Estress_supplied, 'DisplayName', 'As supplied Engineering Stress v.s. Strain', 'Color','#E1BE6A')
title('Engineering Stress Strain v.s. True Stress Strain')
xlabel('Strain [%]')
ylabel('Stress [MPa]')
xlim ([0 0.8])
ylim([0 0.6])
grid on
grid minor
hold on
plot (Tstrain_supplied, Tstress_supplied, 'DisplayName', 'As supplied True Stress v.s. Strain','Color','#40B0A6')
hold on
plot (Estrain_drawn, Estress_drawn, 'DisplayName', 'First Drawn Engineering Stress v.s. Strain','Color','#E66100')
hold on
plot (Tstrain_drawn, Tstress_drawn, 'DisplayName', 'First Drawn True Stress v.s. Strain','Color','#5D3A9B')
legend
hold off


 figure (2), plot(Estrain_supplied,Estress_supplied, 'DisplayName', 'As supplied Engineering Stress v.s. Strain', 'Color','#E1BE6A')
title('Engineering Stress Strain v.s. True Stress Strain')
xlabel('Strain [%]')
ylabel('Stress [MPa]')
xlim ([0 0.008])
ylim ([0 0.3])
grid on
grid minor
hold on
plot (Tstrain_supplied, Tstress_supplied, 'DisplayName', 'As supplied True Stress v.s. Strain','Color','#40B0A6')
hold on
plot (Estrain_drawn, Estress_drawn, 'DisplayName', 'First Drawn Engineering Stress v.s. Strain','Color','#E66100')
hold on
plot (Tstrain_drawn, Tstress_drawn, 'DisplayName', 'First Drawn True Stress v.s. Strain','Color','#5D3A9B')
legend
hold off

 figure (3), plot(Estrain_supplied,Estress_supplied, 'DisplayName', 'As supplied Engineering Stress v.s. Strain', 'Color','#E1BE6A')
title('Engineering Stress Strain v.s. True Stress Strain')
xlabel('Strain [%]')
ylabel('Stress [MPa]')
xlim ([0.008 0.705])
ylim ([0 0.6])
grid on
grid minor
hold on
plot (Tstrain_supplied, Tstress_supplied, 'DisplayName', 'As supplied True Stress v.s. Strain','Color','#40B0A6')
hold on
plot (Estrain_drawn, Estress_drawn, 'DisplayName', 'First Drawn Engineering Stress v.s. Strain','Color','#E66100')
hold on
plot (Tstrain_drawn, Tstress_drawn, 'DisplayName', 'First Drawn True Stress v.s. Strain','Color','#5D3A9B')
legend
hold off

%find the 0.2% strain offset line
%get 0.2%line for graph
x = 0.002:0.0001:1.5;
m = 110;
x1 = 0.002;
y1 = 0;
y = m*(x-x1)+y1;

%plot intersection point
ix1 = 0.004590;
iy1 = 0.28484;

%now plot each 4 individually without the take up portion of the curve
 figure (4), plot(Tstrain_drawn, Tstress_drawn, 'DisplayName', 'First Drawn True Stress v.s. Strain', 'Color','#E1BE6A')
title('Engineering Stress Strain v.s. True Stress Strain')
xlabel('Strain [%]')
ylabel('Stress [MPa]')
xlim ([0 0.8])
ylim ([0 0.6])
hold on
plot (x,y, 'DisplayName', '0.2% Offset','Color','#E66100')
legend
hold on
plot (ix1, iy1,'x-','MarkerFaceColor','#5D3A9B','MarkerEdgeColor','#5D3A9B')
hold off
