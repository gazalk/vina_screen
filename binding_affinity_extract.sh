#! /bin/bash
DIR="/home/root1/Documents/ACE_Docking/4aph_all_re_withoxt/receptor/*/"

for d in $DIR
do
	cd $d
	b=`basename $d`
	ba=${b::-10}
    echo Processing ligand $d
    line=`sed -n 26p log.txt`
    line="$ba $line"
	echo $line >> ../binding_aff_new.csv
done
