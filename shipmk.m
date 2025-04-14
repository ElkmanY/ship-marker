function fh = shipmk(x,y,varargin)
%% shipmk
% Draw ship-shape markers on a trajectory
% Inputs:
%   (x, y) - point set of the curve 
%   psi - heading of ship markers (rad) with the same length of x and y, 
%       default if empty: headings are along the curve.
%   ms - ship marker scale in range (0,1]
%   mn - ship marker number (integer)
%   mc - ship marker color ( 'r', 'g', 'b', etc. OR [0.4 0.4 0.5] ...)
% Created on: 2021-05-12
% Modified on: 2025-04-14 
% Author: github.com/ElkmanY
%% assign parameters
sv = length(varargin);
psi = []; mn = []; ms = []; mc = [];
if sv == 4
    [psi, ms, mn, mc] = deal(varargin{:});
elseif sv == 3
    [psi, ms, mn] = deal(varargin{:});
elseif sv == 2
     [psi, ms] = deal(varargin{:});
elseif sv == 1
    [psi] = deal(varargin{:});
end
if isempty(mn)
    mn = 5;
end
if isempty(ms)
    ms = 0.2;
end
if isempty(mc)
    mc = 'y';
end
%% marker shape
mk = [  [-0.618,0.618,0.618,0.382,0,-0.382,-0.618,-0.618];
        [-1.618,-1.618,0.618,1.236,1.618,1.236,0.618,-1.618]  ];
%%
axis equal
hold on
grid on
for k = round(linspace(1,length(x)-1,mn))
    if isempty(psi)
        a = pi/2 - atan((y(k+1)-y(k))/(x(k+1)-x(k)));
    else
        a = psi(k);
    end
    S = [  1, 0, -x(k); 0, 1, -y(k); 0, 0, 1] ...
      \ [   cos(a), sin(a), 0;  -sin(a), cos(a), 0; 0 0 1]...
      * [   1, 0, -x(k); 0, 1, -y(k); 0, 0, 1]...
      * [   x(k) + ms*mk(1,:);
            y(k) + ms*mk(2,:);
        	ones(1,8)];    
    fh = fill(S(1,:),S(2,:),mc,'FaceAlpha',0.7,'EdgeColor','k','LineWidth',0.5);
    plot(x(k),y(k),'k.');
end
hold off
end

