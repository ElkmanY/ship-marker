function [ ] = shipMarker( X, Y, S, N )
%shipMarker - Draw ship-shaped markers on a curve 
%   (X, Y) - points of the curve
%   S - ship figure scale in range (0,1]
%   N - ship figure number (integer)
%author: Zhihao YU
%date: Jan-22-2021
%%
axis equal
hold on
for i = 1:floor(length(X)/N):length(X)
    if i==1
        continue;
    end
    a = pi/2 - atan((Y(i+1)-Y(i))/(X(i+1)-X(i)));
    R = inv([  1, 0, -X(i);
                0, 1, -Y(i);
                0, 0, 1]) ...
      * [   cos(a), sin(a), 0;
            -sin(a), cos(a), 0;
            0 0 1]...
      * [   1, 0, -X(i);
            0, 1, -Y(i);
            0, 0, 1]...
      * [   X(i) + S*[-2, 2, 2, 0, -2, -2];
            Y(i) + S*[-4, -4, 3, 5, 3, -4];
        	ones(1,6)];
    plot(R(1,:),R(2,:),'b');
end
hold off
end

