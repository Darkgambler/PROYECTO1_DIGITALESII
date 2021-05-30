#!bin/bash

#sed -i 's|p|rf|g' etapaflops2.v
nombre='./synth_'$1'.v'


sed -i 's|recirculacion|synth_recirculacion|g' $nombre
sed -i 's|etapaflops1|synth_etapaflops1|g' $nombre
sed -i 's|etapaflops2|synth_etapaflops2|g' $nombre
sed -i 's|'$1'|synth_'$1'|g' $nombre
sed -i 's|IDLE_OUT|IDLE_OUT_synt|g' $nombre

for i in {0..3}; do
    sed -i 's|data_'$i'ps|GATO1_'$i'|g' $nombre
    sed -i 's|data_'$i'rf|GATO2_'$i'|g' $nombre
    sed -i 's|data_'$i'rp|GATO3_'$i'|g' $nombre
    sed -i 's|valid_'$i'ps|PERRO1_'$i'|g' $nombre
    sed -i 's|valid_'$i'rf|PERRO2_'$i'|g' $nombre
    sed -i 's|valid_'$i'rp|PERRO3_'$i'|g' $nombre

    sed -i 's|data_'$i'|data_'$i'_synt|g' $nombre
    sed -i 's|valid_'$i'|valid_'$i'_synt|g' $nombre
    
    sed -i 's|GATO1_'$i'|data_'$i'ps_synt|g' $nombre
    sed -i 's|GATO2_'$i'|data_'$i'rf_synt|g' $nombre
    sed -i 's|GATO3_'$i'|data_'$i'rp_synt|g' $nombre
    sed -i 's|PERRO1_'$i'|valid_'$i'ps_synt|g' $nombre
    sed -i 's|PERRO2_'$i'|valid_'$i'rf_synt|g' $nombre
    sed -i 's|PERRO3_'$i'|valid_'$i'rp_synt|g' $nombre
    
done

