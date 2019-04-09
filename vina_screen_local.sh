#! /bin/bash
FILES="/home/root1/Documents/ACE_Docking/4aph_all/ligands_sel/*.pdbqt"
for f in $FILES
do
    b=`basename $f .pdbqt`
    echo Processing ligand $b
    mkdir -p $b
    ./vina --config config.txt --ligand $f --out ${b}/out.pdbqt --log ${b}/log.txt
done
