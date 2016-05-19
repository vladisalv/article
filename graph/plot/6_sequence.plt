set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/6_sequence.png'

set title "Сравнение с последовательным вариантом программы.\n \
{/*0.7 Сравнение искуственной последовательности (длина 5 млн.) с самой собой}\n\
{/*0.7 и сравнение последовательности мыши и крысы на одном процессе. Lomonosov.}"
set ylabel "время (сек)"
set y2label "время (сек)" rotate by -90
set xlabel "сравниваемые последовательности."
set key center top autotitle columnheader

set xtics("искуственная" 0, "крыса с мышью" 3)
set ytics nomirror
set y2tics

set style histogram cluster gap 1
set style data histograms # Тип гистограммы
set style fill solid 1 # Заполнение

plot data_dir.'/6_sequence.data' u 2 every ::0::2 lt rgb 'forest-green',\
     data_dir.'/6_sequence.data' u 3 every ::0::2 lt rgb 'orange',\
     data_dir.'/6_sequence.data' u 4 every ::0::2 lt rgb 'royalblue',\
     data_dir.'/6_sequence.data' u 5 every ::0::2 lt rgb 'dark-red',\
     newhistogram lt 1 at 1,\
     data_dir.'/6_sequence.data' u 2 every ::2::4 axes x1y2 lt rgb 'forest-green' notitle,\
     data_dir.'/6_sequence.data' u 3 every ::2::4 axes x1y2 lt rgb 'orange'       notitle,\
     data_dir.'/6_sequence.data' u 4 every ::2::4 axes x1y2 lt rgb 'royalblue'    notitle
