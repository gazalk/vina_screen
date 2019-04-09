import sys
import __main__
__main__.pymol_argv = ['pymol', '-qc'] # Pymol, quiet, noGUI
import pymol
pymol.finish_launching()
from pymol import cmd
filepath = sys.argv[1]
cmd.load(filepath, "lig")
cmd.select('lig1', 'state 1')
cmd.alter('lig1', 'resi=str(int(resi)+701)')
cmd.save(filepath, 'lig1')
