close all;
clearvars
%%
x = linspace(0,2*pi,100);
y = sin(x);
psi = pi/2 + pi/6*(2*rand(1,100)-1);

figure
t1 = plot(x,y,'r','LineWidth',1);
s1 = shipmk(x,y);
hold on
t2 = plot(x,y-1,'b','LineWidth',1);
s2 = shipmk(x,y-1,psi,[],10,'c');
xlabel('x')
ylabel('y')
lg = legend([t1,t2,s1,s2], ...
    {'Trajectory 1','Trajectory 2','Ship 1','Ship 2'});

saveas(gcf, 'example_plot.png', 'png');
