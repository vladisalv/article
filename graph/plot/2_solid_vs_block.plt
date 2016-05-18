set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/2_solid_vs_block.png'

set title "Сравнение цельной и блочной программы.\n \
{/*0.7 Сравнение искуственной последовательности с самой собой.}\n \
{/*0.7 Размер последовательности 5 млн. Lomonosov.}"
set ylabel "время (сек)"

set grid ytics
unset xtics
set style data histograms # Тип гистограммы
#set boxwidth 0.6 absolute # Ширина столбцов от максимума (когда они соприкасаются)
set style fill solid 1 # Заполнение

set key outside center right # Вынести легенду за график


plot data_dir.'/2_solid_vs_block.data' u 1 lt rgb 'forest-green' title "BLOCK-GPU",\
     data_dir.'/2_solid_vs_block.data' u 2 lt rgb 'royalblue'    title "SOLID-GPU",\
     data_dir.'/2_solid_vs_block.data' u 3 lt rgb 'orange'       title "BLOCK-HOST",\
     data_dir.'/2_solid_vs_block.data' u 4 lt rgb 'dark-red'     title "SOLID-HOST"
