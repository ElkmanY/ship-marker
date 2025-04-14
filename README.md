# ship-marker
Draw ship-shaped markers on a curve with Matlab function Plot.

## usage

```matlab
shipmk( x, y, psi, ms, mn, mc );  % Draw ship-shaped markers on a curve 

``` 

### inputs:

-   `(x, y)` - point set of the curve
-   `psi` - heading of ship markers (rad) with the same length of x and y, default if empty: headings are along the curve.
-   `ms` - ship marker scale in range (0,1]
-   `mn` - ship marker number (integer)
-   `mc` - ship marker color ( 'r', 'g', 'b', etc. OR [0.4 0.4 0.5] ...)

## example

Run a test by executing
```matlab 
test.m
```
![example_plot](/example_plot.png?200x200)