set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/3_host_vs_gpu.png'

set title "Эффективность использования GPU.\n \
{/*0.7 Поэтапное сравнение последовательности мыши и крысы на одном процессе. Lomonosov.}"
set ylabel "время (сек)"
set xlabel "этапы вычислений"
set key outside right center autotitle columnheader # Вынести легенду за график

set grid ytics
set style data histograms # Тип гистограммы
set style fill solid 1 # Заполнение

plot data_dir.'/3_host_vs_gpu.data' u 2:xtic(1) lt rgb 'royalblue',\
     data_dir.'/3_host_vs_gpu.data' u 3:xtic(1) lt rgb 'dark-red'
