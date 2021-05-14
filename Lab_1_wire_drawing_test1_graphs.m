%take time taken and force applied to the wire from excel spreadsheet
%store that as variables
%plot force over time for tabulated analysis

%repeat for the other draws, plot all 3 on the same axis
close all
clear all
clc

%note this is for the first test

%Reading test 1 draw 1 excel spreadsheet to get force and time

Xdata = readtable('Test 1 Draw 1.xlsx','Range','A3:B126');
XnoRead = [];
Xdata(:, XnoRead) = [];
XdataArray = table2array(Xdata);


%creates variables time and force (as supplied)
Time_draw1 = XdataArray(:,1)-2.64;
Force_draw1 = XdataArray(:,2);

%Reading test 1 draw 2 excel spreadsheet to get force and time

XXdata = readtable('Test 1 Draw 2.xlsx','Range','A3:B158');
XXnoRead = [];
XXdata(:, XXnoRead) = [];
XXdataArray = table2array(XXdata);


%creates variables time and force (as supplied)
Time_draw2 = XXdataArray(:,1)-3.92;
Force_draw2 = XXdataArray(:,2)+1;


%Reading test 1 draw 3 excel spreadsheet to get force and time

XXXdata = readtable('Test 1 Draw 3.xlsx','Range','A3:B232');
XXXnoRead = [];
XXXdata(:, XXXnoRead) = [];
XXXdataArray = table2array(XXXdata);


%creates variables time and force (as supplied)
Time_draw3 = XXXdataArray(:,1)-5.12;
Force_draw3 = XXXdataArray(:,2)+1;

%plot these 3 results on the same axis
 figure (1), plot(Time_draw1,Force_draw1, 'DisplayName', 'First Draw Test 1', 'Color','#E1BE6A')
title('Wire Drawing Test 1')
xlabel('Time [sec]')
ylabel('Force [N]')
xlim ([0 10])
ylim ([0 900])
grid on
grid minor
hold on
plot (Time_draw2,Force_draw2, 'DisplayName', 'Second Draw Test 1','Color','#40B0A6')
hold on
plot (Time_draw3,Force_draw3, 'DisplayName', 'Third Draw Test 1','Color','#E66100')
%hold on
%plot (Tstrain_drawn, Tstress_drawn, 'DisplayName', 'First Drawn True Stress v.s. Strain','Color','#5D3A9B')
legend
hold off






















