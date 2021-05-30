###### escribir el nombre del modulo sin .v
NAME = demux2x4_8bits
all: yosys compilar
compilar:
	iverilog testbench.v
	vvp ./a.out
	rm ./a.out
yosys:
	cp ./UTILIDADES/SEED/script.ys ./UTILIDADES/script.ys
	sed -i 's|SUSTITUIR|$(NAME)|g' ./UTILIDADES/script.ys
	yosys -f script ./UTILIDADES/script.ys
	bash script4.sh $(NAME)
cambiar:
	sed -i 's|_cond||g' demux2x4_8bits.v probador.v
	sed -i 's|11_synt|rx11_synt|g' demux2x4_8bits.v probador.v
	sed -i 's|_0_synt|_rx0_synt|g' demux2x4_8bits.v probador.v
	sed -i 's|_1_synt|_rx1_synt|g' demux2x4_8bits.v probador.v
	sed -i 's|_2_synt|_rx2_synt|g' demux2x4_8bits.v probador.v
	sed -i 's|_3_synt|_rx3_synt|g' demux2x4_8bits.v probador.v
