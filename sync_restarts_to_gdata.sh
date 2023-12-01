#!/bin/bash
#PBS -q copyq
#PBS -l ncpus=1
#PBS -l wd
#PBS -l storage=gdata/ik11+gdata/e14+gdata/cj50+scratch/v45+scratch/e14+scratch/oz91
#PBS -l walltime=2:00:00,mem=2GB
#PBS -P e14
#PBS -N restarts_to_gdata

source sync_output_to_gdata.sh # to define GDATADIR and cd archive

rsync -vrltoD --safe-links restart* ${GDATADIR}
