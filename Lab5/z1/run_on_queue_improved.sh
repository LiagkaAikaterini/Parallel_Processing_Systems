#!/bin/bash

## Give the Job a descriptive name
#PBS -N run_accounts_improved

## Output and error files
#PBS -o run_accounts_improved.out
#PBS -e run_accounts_improved.err

## How many machines should we get?

##How long should the job run for?
#PBS -l walltime=00:30:00

## Start
## Run make in the src folder (modify properly)

cd /home/parallel/parlab20/a5/z1

echo "Implementation 1"

MT_CONF=0 ./accounts

MT_CONF=0,1 ./accounts

MT_CONF=0,1,2,3 ./accounts

MT_CONF=0,1,2,3,4,5,6,7 ./accounts

MT_CONF=0,1,2,3,4,5,6,7,32,33,34,35,36,37,38,39 ./accounts

MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47 ./accounts

MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63 ./accounts


echo "Implementation 2"

MT_CONF=0 ./accounts

MT_CONF=0,8 ./accounts

MT_CONF=0,8,16,24 ./accounts

MT_CONF=0,1,8,9,16,17,24,25 ./accounts

MT_CONF=0,1,2,3,8,9,10,11,16,17,18,19,24,25,26,27 ./accounts

MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31 ./accounts

MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63 ./accounts
