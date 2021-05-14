%finding the area under the curve
clear all
close all
clc

%1st drawn engineering stress

%values to get the main arch
x1 = [0.4578 0.4578 5.6686 20.857 37.944 37.944];
y1 = [0 0.28353 0.32406 0.36304 0.37982 0];
%area of this main point is 0.1315

plot(x1, y1, 'DisplayName', 'Plastic Deformation Portion of the Stress v.s. Strain Curve', 'Color','#5D3A9B')
title('Estimate of the Internal Work in the First Drawn Engineering Stress v.s. Strain Data')
xlabel('Strain [%]')
ylabel('Stress [MPa]')
hold on
%now need to get the lil triangle to minus off of the end
x2 = [37.5 37.944];
y2 = [0 0.37482];

plot(x2, y2,'DisplayName', 'Energy Released During the Samples Failure', 'Color','#E66100')
legend
annotation('textbox', [0.2, 0.2, 0.1, 0.1], 'String', "Internal Energy of Plastic Deformation = 13.0644 MJ/m^3")
%area of the lil triangle is 8.3210e-04

Area_under_the_cruve = 0.1315 - (8.3210e-04);