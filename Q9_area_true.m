%finding the area under the curve
clear all
close all
clc

%1st drawn true stress

%values to get the main arch
% x1 = [0.004590 0.004590 0.049439 0.15701 0.25781 0.3231 0.3231];
% y1 = [0 0.28484 0.33836 0.41852 0.48139 0.51717 0];
%area of this main point is 0.1326
x1 = [0.4590 0.4590 4.9439 15.701 25.781 32.31 32.31];
y1 = [0 0.28484 0.33836 0.41852 0.48139 0.51717 0];

plot(x1, y1, 'DisplayName', 'Plastic Deformation Portion of the Stress v.s. Strain Curve', 'Color','#5D3A9B')
title('Estimate of the Internal Work in the First Drawn True Stress v.s. Strain Data')
xlabel('Strain [%]')
ylabel('Stress [MPa]')
hold on
%now need to get the lil triangle to minus off of the end
x2 = [31.90 32.31];
y2 = [0 0.51717];

plot(x2, y2,'DisplayName', 'Energy Released During the Samples Failure', 'Color','#E66100')
legend
annotation('textbox', [0.2, 0.2, 0.1, 0.1], 'String', "Internal Energy of Plastic Deformation = 13.1577 MJ/m^3 ")
%area of the lil triangle is 0.0011

Area_under_the_cruve = 0.1326 - 0.0011;