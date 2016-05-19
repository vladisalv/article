set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/4_mpiXgpu.png'

set title "Использование одного графического процессора \n \
на несколько MPI-процессов.\n \
{/*0.7 Сравнение последовательности мыши и крысы. Lomonosov.}"
set xlabel "количество процессов"
set ylabel "время (сек)"
set key right center outside autotitle columnheader

plot data_dir.'/4_mpiXgpu.data' u 2:xtic(1) w linespoints lw 2 pt 7 lt rgb 'royalblue',\
     data_dir.'/4_mpiXgpu.data' u 3:xtic(1) w linespoints lw 2 pt 7 lt rgb 'dark-red'
