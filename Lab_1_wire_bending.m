%take machine stroke and force applied to the wire from excel spreadsheet
%store that as variables
%plot force over time for tabulated analysis

%repeat for the other draws, plot all 3 on the same axis
close all
clear all
clc

%note this is for the first test

%Reading as supplied excel spreadsheet to get force and stroke

Xdata = readtable('As Recieved.xlsx','Range','A4:C3054');
XnoRead = [1];
Xdata(:, XnoRead) = [];
XdataArray = table2array(Xdata);


%creates variables time and force (as supplied)
Stroke_supplied = XdataArray(:,2)-0.501;
Force_supplied = XdataArray(:,1)-6.8281;

%Reading firstdraw excel spreadsheet to get force and stroke

XXdata = readtable('First draw.xlsx','Range','A4:C3202');
XXnoRead = [1];
XXdata(:, XXnoRead) = [];
XXdataArray = table2array(XXdata);


%creates variables time and force (as supplied)
Stroke_draw1 = XXdataArray(:,2)-0.674;
Force_draw1 = XXdataArray(:,1)-6.8594;


%Reading second draw excel spreadsheet to get force and stroke

XXXdata = readtable('Second draw.xlsx','Range','A4:C3390');
XXXnoRead = [1];
XXXdata(:, XXXnoRead) = [];
XXXdataArray = table2array(XXXdata);


%creates variables time and force (as supplied)
Stroke_draw2 = XXXdataArray(:,2)-0.831;
Force_draw2 = XXXdataArray(:,1)-6.2969 ;

%Reading third draw excel spreadsheet to get force and stroke

XXXXdata = readtable('Third draw.xlsx','Range','A4:C4462');
XXXXnoRead = [1];
XXXXdata(:, XXXXnoRead) = [];
XXXXdataArray = table2array(XXXXdata);


%creates variables time and force (as supplied)
Stroke_draw3 = XXXXdataArray(:,2)- 1.118;
Force_draw3 = XXXXdataArray(:,1)- 6.2813;



%plot these 4 results on the same axis
 figure (1), plot(Stroke_supplied,Force_supplied, 'DisplayName', 'As Supplied', 'Color','#E1BE6A')
title('Wire Bending Test ')
xlabel('Stroke of Testing Machine [mm]')
ylabel('Force [N]')
xlim ([0 3])
grid on
grid minor
hold on
plot (Stroke_draw1,Force_draw1, 'DisplayName', 'First Draw','Color','#40B0A6')
hold on
plot (Stroke_draw2,Force_draw2, 'DisplayName', 'Second Draw','Color','#E66100')
hold on
plot (Stroke_draw3, Force_draw3, 'DisplayName', 'Third Draw','Color','#5D3A9B')
legend
hold off



%get 0.2%line for graph
x = 0.005192:0.0001:1.5;
m = 100;
x1 = 0.005192;
y1 = 0;
y = m*(x-x1)+y1;

%plot intersection point
ix1 = 0.65309;
iy1 = 64.79;

%now plot each 4 individually without the take up portion of the curve
 figure (2), plot(Stroke_draw3,Force_draw3, 'DisplayName', '3rd Draw', 'Color','#E1BE6A')
title('Wire Bending Test ')
xlabel('Stroke of Testing Machine [mm]')
ylabel('Force [N]')
xlim ([0 1])
ylim ([0 100])
hold on
plot (x,y, 'DisplayName', '0.2% offset','Color','#E66100')
legend
hold on
plot (ix1, iy1,'x-','MarkerFaceColor','#5D3A9B','MarkerEdgeColor','#5D3A9B')
hold off





















