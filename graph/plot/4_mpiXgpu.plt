set terminal png font "/usr/share/fonts/truetype/msttcorefonts/Arial.ttf" 14
set output image_dir.'/4_mpiXgpu.png'

set title "Использование одного графического процессора \n \
на несколько MPI-процессов.\n \
{/*0.7 Сравнение последовательности мыши и крысы. Lomonosov.}"
set xlabel "количество процессов"
set ylabel "время (сек)"

set xtics ("1" 0, "2" 1, "4" 2, "8" 3)
set key right center outside

plot data_dir.'/4_mpiXgpu.data' u 1:2 w linespoints lw 2 pt 7 lt rgb 'royalblue' title "GPU",\
     data_dir.'/4_mpiXgpu.data' u 1:3 w linespoints lw 2 pt 7 lt rgb 'dark-red'  title "HOST"
