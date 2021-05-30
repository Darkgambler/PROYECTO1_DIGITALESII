###### escribir el nombre del modulo sin .v
NAME = mux4x2_8bits
all: yosys compilar
compilar:
	iverilog testbench.v
	vvp ./a.out
	rm ./a.out
yosys:
	cp ./UTILIDADES/SEED/script.ys ./UTILIDADES/script.ys
	sed -i 's|SUSTITUIR|$(NAME)|g' ./UTILIDADES/script.ys
	yosys -f script ./UTILIDADES/script.ys
	sed -i 's|$(NAME)|synth_$(NAME)|g' ./synth_$(NAME).v
	sed -i 's|[0-1][0-1]|&_synt|g' ./synth_$(NAME).v
cambiar:
	sed -i 's|clk|clk_2f|g' mux4x2_8bits.v probador.v
