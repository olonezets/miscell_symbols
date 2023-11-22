#!/bin/bash

name=(`find /home/intel/Desktop/1/ -iname '*.js'`)
#echo ${name[@]}
a0=${name[@]}
#echo $a0

a01=(${#name[@]})
#echo $a01

			
	a1=("${a0[@]//'./'/}")
	a2=($a1)
	#echo ${a2[@]}
	
	a_1=("${a0[@]//'./'/}")
	a_2=("${a_1[@]//./_1.}")
	a_3=($a_2)
	#echo ${a_3[@]}

#exec 3>link.html

for ((i = 0; i < $a01; i++))
do
awk '/\/\*/,/\*\// {next}1' ${a2[$i]} > ${a_3[$i]} #>&3
done

sleep 0.1

for ((i = 0; i < $a01; i++))
do
rm -r ${a2[$i]}
done

sleep 0.1

for ((i = 0; i < $a01; i++))
do
mv ${a_3[$i]} ${a2[$i]} #>&3
done

#======================================================================#

sleep 0.1

name=(`find /home/intel/Desktop/1/ -iname '*.js'`)
#echo ${name[@]}
a0=${name[@]}
#echo $a0

a01=(${#name[@]})
#echo $a01

			
	a1=("${a0[@]//'./'/}")
	a2=($a1)
	#echo ${a2[@]}
	
	a_1=("${a0[@]//'./'/}")
	a_2=("${a_1[@]//./_1.}")
	a_3=($a_2)
	#echo ${a_3[@]}

#exec 3>link.html

for ((i = 0; i < $a01; i++))
do
awk '/\/\//,// {next}1' ${a2[$i]} > ${a_3[$i]} #>&3
done

sleep 0.1

for ((i = 0; i < $a01; i++))
do
rm -r ${a2[$i]}
done

sleep 0.1

for ((i = 0; i < $a01; i++))
do
mv ${a_3[$i]} ${a2[$i]} #>&3
done


