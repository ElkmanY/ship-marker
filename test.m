close all;
clear all;
%%
x = 0:0.1:pi;
y = sin(x);
u = 0.03;
n = 5;
figure
plot(x,y,'r');
shipMarker(x,y,u,n);