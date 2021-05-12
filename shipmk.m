function shipmk( x, y, scale, n, heading, color )
%shipMarker - Draw ship-shaped markers on a curve 
% inputs:
%   (x, y) - point set of the curve
%   scale - ship figure scale in range (0,1]
%   n - ship figure number (integer)
%   heading - heading vector of ship figures [rad] with length of N, 
%       default: following the curve 
%   color - ship color ( 'r', 'g', 'b', etc. OR [0.4 0.4 0.5] ...)
% date: 2021-05-12
% author: github.com/ElkmanY
%%
axis equal
hold on
for i = 1:floor(length(x)/n):length(x)
    if isempty(heading)
        a = pi/2 - atan((y(i+1)-y(i))/(x(i+1)-x(i)));  % heading of ship figure [rad] 
    else
        a = heading(i);
    end
    R = inv([  1, 0, -x(i); 0, 1, -y(i); 0, 0, 1]) ...
      * [   cos(a), sin(a), 0;  -sin(a), cos(a), 0; 0 0 1]...
      * [   1, 0, -x(i); 0, 1, -y(i); 0, 0, 1]...
      * [   x(i) + scale*[-1,  1,   1, 0.8, 0, -0.8,  -1, -1];
            y(i) + scale*[-4, -4, 2.5,   3, 4,    3, 2.5, -4];
        	ones(1,8)];
%     plot(R(1,:),R(2,:),'r');  % Plot edges only
    fill(R(1,:),R(2,:),color ,'FaceAlpha',0.7,'EdgeColor','k','LineWidth',0.5 ); % filled with color
end
hold off
end

