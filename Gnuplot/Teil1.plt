set grid
f(x)= a*x+b
fit [49:301] f(x) "Teil1.txt" u 1:3:2 via a,b
set yrange[-1:160]
set xlabel "I / mA"
set ylabel "P / mW"
plot  f(x) t "fit" lc "green" lw 2, "Teil1.txt" u 1:3:2:4 w xyerror t "data" lc "red"