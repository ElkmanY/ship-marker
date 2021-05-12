# ship-marker
Draw ship-shaped markers on a curve with Matlab function Plot.

## usage

```matlab
shipmk( x, y, scale, n, heading, color );  % Draw ship-shaped markers on a curve 

``` 

### inputs:

-   `(x, y)` - coordinate, point set of the curve.
-   `scale` - ship figure scale in range (0,1].
-   `n` - ship figure number (integer).
-   `heading` - heading vector of ship figures [rad], following the curve if empty.   
-   `color` - ship color ( 'r', 'g', 'b', etc. OR [0.4 0.4 0.5] ...).

## example

Run a test by executing
```matlab 
test.m
```
![marked](/marked.png?200x200)