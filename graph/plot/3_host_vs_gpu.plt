set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/3_host_vs_gpu.png'

set title "Эффективность использования GPU.\n \
{/*0.7 Поэтапное сравнение последовательности мыши и крысы на одном процессе. Lomonosov.}"
set ylabel "время (сек)"
set xlabel "этапы вычислений"

set grid ytics
set xtics 0,2,3
set xtics ("Индексирование" 0, "Сравнение" 2, "Итог" 4)
set style data histograms # Тип гистограммы
#set boxwidth 0.6 absolute # Ширина столбцов от максимума (когда они соприкасаются)
set style fill solid 1 # Заполнение

set key outside right center # Вынести легенду за график

#set xtic rotate by 45 scale 0 offset character -6,-2

plot data_dir.'/3_host_vs_gpu.data' u 1 lt rgb 'royalblue' title "GPU",\
     data_dir.'/3_host_vs_gpu.data' u 2 lt rgb 'dark-red' title "HOST"
