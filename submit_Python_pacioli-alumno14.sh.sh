#!/bin/bash
#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno14/LAB4		
#SBATCH -J submit_lab4
#SBATCH --output=%u-%j.out
#SBATCH --mail-type=NONE

module load anaconda/2023.03
echo
echo "* soluciones: *"
echo
echo "Para un valor 10^7"
echo
ipython reduc-operation.ipynb 10000000
echo
echo
echo "Para un valor 10^8"
echo
ipython reduc-operation.ipynb 100000000

module unload anaconda/2023.03