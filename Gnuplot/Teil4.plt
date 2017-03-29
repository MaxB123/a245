set grid
f(x)= a*cos(b*x+c)**g+d
a=32.5118; b=2; c=0.9425; d=0.16036; g=4;
fit f(x) "Teil4.txt" u ($1/(180)*3.14159):3:4 via a,b,c,d
set xrange[0:3.5]
set xlabel "{/Symbol Q} / rad"
set ylabel "P / mW"
plot f(x) t "fit" lc "green" lw 2, "Teil4.txt" u ($1/(180)*3.14159):3:($2/(180)*3.14159):4 w xyerror t "data" lc "red"