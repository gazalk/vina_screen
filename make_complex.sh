#! /bin/bash
FILES="/home/root1/Documents/ACE_Docking/4aph_all_re_withoxt/all_conf/*"

for f in $FILES
do
	b=`basename $f`
	b=${b::-4}
	echo is the merge file $b?
    echo Making complex for ligand $f
    c="receptor_$b.pdb"
	cat receptor.pdb $f > $c 
done
