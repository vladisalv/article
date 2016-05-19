set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/5_scalability_bluegene.png'

set title "Масштабируемость программы.\n \
{/*0.7 Сравнение последовательности мыши и крысы. Блочная программа. Blue Gene/P}
set xlabel "количество процессов"
set ylabel "время (сек)"

set logscale y
set xtics font ", 10"

plot data_dir.'/5_scalability_bluegene.data' u 2:xtic(1) w linespoints lw 2 pt 7 lt rgb 'royalblue' notitle
