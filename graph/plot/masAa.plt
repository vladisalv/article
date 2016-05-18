set terminal png
set output 'image/masAa.png'

set title "Время выполнения блочной программы. 20 млн. Lomonosov"
set xlabel "количество процессов"
set ylabel "время (сек)"

set xtics ("1" 1, "2" 2, "4" 3, "8" 4, "16" 5, "32" 6, "64" 7)
set yrange [0:2460]
set key spacing 1.5 right top

plot 'data/masAa.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'blue' title "HOST",\
     'data/masAa.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'red'  title "GPU"
