#!/usr/bin/env zsh

### Job name
#BSUB -J SERIALJOB -P um_dke

### File / path where STDOUT & STDERR will be written
###    %J is the job ID, %I is the array ID
#BSUB -o /home/no316758/bsub_results/SERIALJOB.%J.%I

### Request the time you need for execution in minutes
### The format for the parameter is: [hour:]minute,
### that means for 80 minutes you could also use this: 1:20
# BSUB -W 23:59

### Request memory you need for your job in TOTAL in MB
#BSUB -M 16000

### Change to the work directory
cd /home/no316758/projects/eeg_thesis/pipeline

### Execute your application
source ~/anaconda3/bin/activate eeg
### add -u flag so that python print will be unbuffered and therefore show up with bpeek (-f) command
python -u main.py