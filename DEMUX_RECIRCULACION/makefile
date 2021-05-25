###### escribir el nombre del modulo sin .v
NAME = recirculacion
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
	sed -i 's|_cond|_synt|g' ./synth_$(NAME).v
cambiar:
	sed -i 's|VALID|VALID_TOTAL|g' probador.v
