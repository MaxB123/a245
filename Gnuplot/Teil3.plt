set grid
f(x)= a*sin(b*x+c)**2/((b*x+c)**2)+d
a=34; c=-46.6094; d=0.1; b=1.30512;
fit [34:37] f(x) "Teil3.txt" u 1:3:4 via b,c
set xlabel "T / °C"
set ylabel "P / mW"
set xrange[26.6:40.4]
set yrange[-1:]
plot f(x) t "fit" lc "green" lw 2, "Teil3.txt" u 1:3:2:4 w xyerror t "data" lc "red"