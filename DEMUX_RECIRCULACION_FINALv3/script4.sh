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
modulo="etapaflops1 recirculacion"
listaIntermedio=$(listaOutputs "$modulo")
index=0
for i in $listaIntermedio; do
    sed -i 's|'$i'|primeros'$index'|g' synth_recirculacion_sincronico.v
    index=$((index+1))
done

##### AHORA CAMBIAMOS LAS SALIDAS DEL PROBADOR
probador="probador"
listaprobador=$(sacarOutputs "$probador")
index=0
for i in $listaprobador; do
    sed -i 's|'$i'|probador'$index'|g' synth_recirculacion_sincronico.v
    index=$((index+1))
done

##### SE CAMBIAN LAS SALIDAS FINALES 
moduloproblematico="etapaflops2"
listaproblematico=$(sacarOutputs "$moduloproblematico")
for i in $listaproblematico; do
    sed -i 's|'$i'|'$i'_synt|g' synth_recirculacion_sincronico.v
done

###########################################
index=0
for i in $listaIntermedio; do
    sed -i 's|primeros'$index'|'$i'_synt|g' synth_recirculacion_sincronico.v
    index=$((index+1))
done

index=0
for i in $listaprobador; do
    sed -i 's|probador'$index'|'$i'|g' synth_recirculacion_sincronico.v
    index=$((index+1))
done

##### CAMBIAR LOS IDLE_OUT
sed -i 's|IDLE_OUT|IDLE_OUT_synt|g' synth_recirculacion_sincronico.v
##### CAMBIAR NOMBRE DE LOS MODULOS
modulos="etapaflops1 etapaflops2 recirculacion recirculacio_sincronico"
for i in $modulos; do
    sed -i 's|'$i'|synth_'$i'|g' synth_recirculacion_sincronico.v
done
