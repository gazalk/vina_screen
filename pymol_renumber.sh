#! /bin/bash
FILES="/home/root1/Documents/ACE_Docking/4aph_all_re_withoxt/all_conf/*"

for f in $FILES
do
	echo "doing stuff for $f"
	python2.7 renumber_save_pdb.py $f
done
