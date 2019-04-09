# vina_screen
Virtual screening using autodock vina
10 April 2019
Gazal Kalyan 

Requirements:
1) Autodock
2) Vina

Steps for Virtual screening
1) Populate Ligand folder using :

	ligand_pop.sh - converts pdb files to pdbqt
2) Prepare Receptor and Grid:

	config.txt - contains grid prameters and receptor file location
	
	vina_screen_local.sh - the main docking run, creates folders and outputs 
3) Convert result pdbqt to pdb:

	pdbqt_to_pdb.sh - provides CHAIN id to the atoms
4) Process ligand pdb files:  

	pymol_renumber.sh - sort atom numbers and renumber them before merging with original file
5) Make complex of ligand and receptor:

	make_complex.sh - merge ligand pdb file with receptor pdb file 
	
