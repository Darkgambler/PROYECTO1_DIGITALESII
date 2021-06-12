###### escribir el nombre del modulo sin .v y sin comillas
NAME = PPRX
###### escribir aqui el nombre de otros archivos que se desee sintetizar
NAME2 = idletemporal

all: yosys scriptbash compilar
compilar:
	iverilog testbench.v
	vvp ./a.out
	rm ./a.out
alternativos_yosys:
	cp ./UTILIDADES/SEED/script.ys ./UTILIDADES/script.ys
	sed -i 's|SUSTITUIR|$(NAME2)|g' ./UTILIDADES/script.ys
	yosys -f script ./UTILIDADES/script.ys
	sed -i 's|IDLE_OUT|IDLE_OUT_synt|g' synth_$(NAME2).v
	sed -i 's|$(NAME2)|synth_$(NAME2)|g' synth_$(NAME2).v
yosys:
	cp ./UTILIDADES/SEED/script.ys ./UTILIDADES/script.ys
	sed -i 's|SUSTITUIR|$(NAME)|g' ./UTILIDADES/script.ys
	yosys -f script ./UTILIDADES/script.ys
scriptbash:
	bash script4.sh $(NAME)
cambiar:
	sed -i 's|VALID|VALID_TOTAL|g' probador.v
