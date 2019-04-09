#! /bin/bash
DIR="/home/root1/Documents/ACE_Docking/4aph_all_re_withoxt/receptor/*/"

for d in $DIR
do
	cd $d
    echo Processing ligand $d
    ba=`basename $d`
    ba=${ba::-10}
    ba="$ba.pdb"
	/usr/local/MGLTools-1.5.6/bin/pythonsh /home/root1/MGLTools-1.5.6/MGLToolsPckgs/AutoDockTools/Utilities24/pdbqt_to_pdb.py -f out.pdbqt 
	#sed 's/./7/24' out.pdb > output.pdb
	#sed 's/./1/25' out.pdb > output.pdb
	sed 's/./B/22' out.pdb > output.pdb
	mv output.pdb ../../all_conf/$ba
done
