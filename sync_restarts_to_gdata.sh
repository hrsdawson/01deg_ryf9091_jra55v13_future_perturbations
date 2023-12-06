#!/bin/bash
#PBS -q copyq
#PBS -l ncpus=1
#PBS -l wd
#PBS -l storage=gdata/cj50+gdata/e14+scratch/oz91+scratch/e14
#PBS -l walltime=4:00:00,mem=4GB
#PBS -P e14
#PBS -N restarts_to_gdata

source sync_output_to_gdata.sh # to define GDATADIR and cd archive

rsync -vrltoD --safe-links restart* ${GDATADIR}
