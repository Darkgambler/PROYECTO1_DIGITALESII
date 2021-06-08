#!bin/bash

function sacarOutputs() {
    lista=''
    while read line; do
	if [[ $line == *"output reg"* ]]; then
	    line=${line#*"reg"}
	    line=${line#*"]"}
	    line=${line%","*}
	    line=$(echo $line | sed 's|,||g')
	    lista=$lista" "$line
	fi
    done < $1".v"
    echo $lista
}

function listaOutputs() {
    lista=''
    for i in $1; do
	listaK=$(sacarOutputs "$i")
	lista=$lista" "$listaK
    done
    echo $lista
}



##### PRIMERO CAMBIAMOS LOS QUE TIENEN MAS LETRAS Y SON INTERMEDIOS
modulo="serial_paralelo1 paralelo_serial2 etapaflops3 demux1x2_8bits demux2x4_8bits"
probador="probador"
moduloproblematico="etapaflops3"

listaIntermedio=$(listaOutputs "$modulo")
index=100
for i in $listaIntermedio; do
    sed -i 's|'$i'|primeros'$index'|g' 'synth_'$1'.v'
    index=$((index+1))
done

##### AHORA CAMBIAMOS LAS SALIDAS DEL PROBADOR
listaprobador=$(sacarOutputs "$probador")
index=100
for i in $listaprobador; do
    sed -i 's|'$i'|probador'$index'|g' 'synth_'$1'.v'
    index=$((index+1))
done

##### SE CAMBIAN LAS SALIDAS FINALES 
listaproblematico=$(sacarOutputs "$moduloproblematico")
for i in $listaproblematico; do
    sed -i 's|'$i'|'$i'_synt|g' 'synth_'$1'.v'
done


index=100
for i in $listaIntermedio; do
    sed -i 's|primeros'$index'|'$i'_synt|g' 'synth_'$1'.v'
    index=$((index+1))
done

index=100
for i in $listaprobador; do
    sed -i 's|probador'$index'|'$i'|g' 'synth_'$1'.v'
    index=$((index+1))
done

##### CAMBIAR NOMBRE DE LOS MODULOS
modulos="serial_paralelo1 paralelo_serial2 etapaflops3 demux1x2_8bits demux2x4_8bits "$1
### echo $modulos
for i in $modulos; do
    sed -i 's|'$i'|synth_'$i'|g' 'synth_'$1'.v'
done

