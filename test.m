close all;
clear all;
%%
x = 0:0.01:2*pi;
y = sin(x);
s = 0.08;
n = 5;
figure
plot(x,y,'r','LineWidth',2);
shipmk(x,y,s,n,[],'y');
