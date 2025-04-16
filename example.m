close all;
clearvars
%%
x = linspace(0,5*pi,100);
y = sin(0.5*x);
psi = pi/2 + pi/6*(2*rand(1,100)-1);

figure;
s1 = shipmk(x,y); hold on;
t1 = plot(x,y,'r','LineWidth',1);
s2 = shipmk(x,y-2,psi,0.5,10,'c');
t2 = plot(x,y-2,'b','LineWidth',1); hold off;
xlabel('x');
ylabel('y');
legend([t1,t2,s1,s2], ...
    {'Trajectory 1','Trajectory 2','Ship 1','Ship 2'});
box on;

saveas(gcf, 'example_plot.png', 'png');
