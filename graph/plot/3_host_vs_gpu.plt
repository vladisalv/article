set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/3_host_vs_gpu.png'

set title "Эффективность использования GPU.\n \
{/*0.7 Поэтапное сравнение последовательности мыши и крысы на одном процессе. Lomonosov.}"
set ylabel "время (сек)"
set y2label "время (сек)"
set xlabel "этапы вычислений"
set key center center Left autotitle columnheader

set xtics font ", 10"
set ytics nomirror
set yrange[0:*]
set y2tics

set style histogram cluster gap 1
set style data histograms # Тип гистограммы
set style fill solid 1 # Заполнение

plot data_dir.'/3_host_vs_gpu.data' u 2:xtic(1) every ::0::0 lt rgb 'royalblue',\
     data_dir.'/3_host_vs_gpu.data' u 3:xtic(1) every ::0::0 lt rgb 'dark-red',\
     newhistogram lt 1 at 1,\
     data_dir.'/3_host_vs_gpu.data' u 2:xtic(1) every ::1::5 axes x1y2 lt rgb 'royalblue' notitle,\
     data_dir.'/3_host_vs_gpu.data' u 3:xtic(1) every ::1::5 axes x1y2 lt rgb 'dark-red' notitle,\
