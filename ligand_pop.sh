#!/bin/bash
FILES="/home/root1/Documents/pep_model/pep_mini_struc_withoxt/*.pdb"
    for f in $FILES
    do
		/usr/local/MGLTools-1.5.6/bin/pythonsh /home/root1/MGLTools-1.5.6/MGLToolsPckgs/AutoDockTools/Utilities24/prepare_ligand4.py -l $f
    done
#done
