#!/bin/bash
read -p "Number1 : " a
read -p "Number2 : " b
read -p "Number3 : " c

declare -A myArr
myArr=()
myArr[0]=$(($a + $b * $c))
myArr[1]=$(( $a * $b + $c))
myArr[2]=$(( $c + $a + $b))
myArr[3]=$(( $a % $b + $c))

numArray=()
for ele in "${!myArr[@]}"
do
	numArray[$ele]=`echo ${myArr[$ele]}`
done

echo "Descending : "
for ((count=0;count<4;count++))
do
	echo -e ${numArray[$count]}
done | sort -nr

echo "Ascending : "
for ((count=0;count<4;count++))
do
        echo -e ${numArray[$count]}
done | sort -n
