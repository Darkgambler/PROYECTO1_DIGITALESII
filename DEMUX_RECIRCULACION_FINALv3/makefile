###### escribir el nombre del modulo sin .v
NAME = recirculacion_sincronico
#NAME = idletemporal
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
	sed -i 's|VALID|VALID_TOTAL|g' probador.v
