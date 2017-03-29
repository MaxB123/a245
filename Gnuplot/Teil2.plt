set grid
f(x)= a*cos(b*x+c)**2+d
a=200; b=1.71887; d=1; c=0.087266;
set xrange[0:3.5]
set ylabel "P / mW"
set xlabel "{/Symbol Q} / rad"
fit f(x) "Teil2.txt" u ($1/(180)*3.14159):($3/1000):($4/1000) via a,b,c,d
plot f(x) t "fit" lc "green" lw 2, "Teil2.txt" u ($1/(180)*3.14159):($3/1000):($2/(180)*3.14159):($4/1000) w xyerror t "data" lc "red"