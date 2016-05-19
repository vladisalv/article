set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/5_scalability_lomonosov.png'

set title "Масштабируемость программы.\n \
{/*0.7 Сравнение последовательности мыши и крысы. Блочная программа.}\n\
{/*0.7 Конфигурация 4 MPI x 1 GPU. Lomonosov.}"
set xlabel "количество процессов"
set ylabel "время (сек)"
set key right center outside autotitle columnheader

set logscale y
set xtics font ", 10"

plot data_dir.'/5_scalability_lomonosov.data' every ::0::8 u 2:xtic(1) w linespoints lw 2 pt 7 lt rgb 'royalblue',\
     data_dir.'/5_scalability_lomonosov.data' u 3:xtic(1) w linespoints lw 2 pt 7 lt rgb 'dark-red'
