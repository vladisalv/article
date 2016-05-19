set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/1_block_size.png'

set title "Влияние размера блока на время выполнения \n блочной программы.\n \
{/*0.7 Сравнение последовательности мыши и крысы на одном процессе. Lomonosov.}"
set xlabel "размер блока"
set ylabel "время (сек)"
set key right center outside autotitle columnheader

set xtics font ", 10"
set logscale y
set ytics (17000, 25000, 35000, 45000, 80000, 100000)
set yrange [10000:100000]

plot data_dir.'/1_block_size.data' u 2:xtic(1) w linespoints lw 2 pt 7 lt rgb 'dark-red',\
     data_dir.'/1_block_size.data' u 3:xtic(1) w linespoints lw 2 pt 7 lt rgb 'royalblue'
