###### escribir el nombre del modulo sin .v
NAME = demux1x2_8bits
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
	##sed -i 's|'$(NAME)'|synth_'$(NAME)'|g' "synth_"$(NAME)".v"
cambiar:
	sed -i 's|_00_cond|_rx00|g' probador.v
	sed -i 's|_11_cond|_rx11|g' probador.v
	sed -i 's|_00_synt|_rx00_synt|g' probador.v
	sed -i 's|_11_synt|_rx11_synt|g' probador.v
	sed -i 's|_000|_rx000|g' probador.v
	sed -i 's|_000|_rx000|g' probador.v
