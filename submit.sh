#!/bin/bash

#qsub -tc 30 -e /home/sih13/sge-log-files/ -o $1 -t 1-$(find $1 -maxdepth 1 -name "*.fasta_*"|wc -l) importer.sh $1

sbatch -p long -c 28 --mem=500G --error $1/error.txt --output $1/output.txt --array=1-$(find $1 -maxdepth 1 -name "*.faa"|wc -l) importer.sh $1 $2
