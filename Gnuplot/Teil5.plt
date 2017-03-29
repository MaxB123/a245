set grid
f(x)= a*cos(b*x+c)**4+d
a=34; c=-46.6094; d=0.1; b=1.30512;
fit f(x) "Teil5.txt" u ($1/(180)*3.14159):3:4 via a,b,c,d
set xrange[0:3.5]
set xlabel "{/Symbol Q} / rad"
set ylabel "P / mW"
plot f(x) t "fit" lc "green" lw 2, "Teil5.txt" u ($1/(180)*3.14159):3:($2/(180)*3.14159):4 w xyerror t "data" lc "red"