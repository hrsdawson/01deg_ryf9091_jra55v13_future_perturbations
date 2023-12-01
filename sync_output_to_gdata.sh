#!/bin/bash
#PBS -q express
#PBS -l ncpus=1
#PBS -l wd
#PBS -l storage=gdata/ik11+gdata/cj50+gdata/e14+scratch/e14+scratch/oz91
#PBS -l walltime=12:00:00,mem=2GB
#PBS -P e14
#PBS -N output_to_gdata

# Set this directory to something in /g/data3/hh5/tmp/cosima/
# Make a unique path for your set of runs.
# DOUBLE-CHECK IT IS UNIQUE SO YOU DON'T OVERWRITE EXISTING OUTPUT!
GDATADIR=/g/data/cj50/access-om2/raw-output/access-om2-01/01deg_jra55v13_ryf9091_ssp585

mkdir -p ${GDATADIR}
cd archive
rsync --exclude "*.nc.*" --exclude "*ocean_*_3hourly*" --exclude "*iceh_03h*" -vrltoD --safe-links output* ${GDATADIR}
rsync -vrltoD --safe-links error_logs ${GDATADIR}
rsync -vrltoD --safe-links pbs_logs ${GDATADIR}
