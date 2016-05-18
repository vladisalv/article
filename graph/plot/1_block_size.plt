set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/1_block_size.png'

set title "Влияние размера блока на время выполнения \n блочной программы.\n \
{/*0.7 Сравнение последовательности мыши и крысы на одном процессе. Lomonosov.}"
set xlabel "размер блока"
set ylabel "время (сек)"

set logscale y
set ytics (17000, 25000, 35000, 45000, 80000, 100000)
set yrange [10000:100000]
set xtics ("1000" 0, "2000" 1, "5000" 2, "10000" 3, "20000" 4, "40000" 5, "50000" 6, "70000" 7)

set key right center outside

plot data_dir.'/1_block_size.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'dark-red'  title "HOST",\
     data_dir.'/1_block_size.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'royalblue' title "GPU"
