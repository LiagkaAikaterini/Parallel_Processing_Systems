!/bin/bash

## Give the Job a descriptive name
#PBS -N ex_8192

## Output and error files
#PBS -o ex_8192.out
#PBS -e ex_8192.err

##How long should the job run for?
#PBS -l walltime=00:30:00

## Start
## Run make in the src folder

cd /home/parallel/parlab20/a5/z2

lockfiles=( "linked_list_nosync" "linked_list_pthread" "linked_list_tas" "linked_list_ttas" "linked_list_array" "linked_list_clh" )

echo "8192"
for i in "${lockfiles[@]}"
do
echo "${i}"

	MT_CONF=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63 ./${i} 8192

done

