set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/5_scalability_lomonosov.png'

set title "Масштабируемость программы.\n \
{/*0.7 Сравнение последовательности мыши и крысы. Блочная программа.}\n\
{/*0.7 Конфигурация 4 MPI x 1 GPU. Lomonosov.}"
set xlabel "количество процессов"
set ylabel "время (сек)"

set xtics ("1" 0, "2" 1, "4" 2, "8" 3, "16" 4, "32" 5, "64" 6, "128" 7, "256" 8, "512" 9, "1024" 10)
set logscale y
set key right center outside

plot data_dir.'/5_scalability_lomonosov.data' every ::0::8 u 1:2 w linespoints lw 2 pt 7 lt rgb 'royalblue' title "GPU",\
     data_dir.'/5_scalability_lomonosov.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'dark-red'  title "HOST"
