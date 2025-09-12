#!/bin/bash

rm -f vs.txt
nfile=0
for dir in */ ; do
  for inf in $dir/*.molden ; do
    ((nfile++))
    Multiwfn $inf -silent << EOF > out.txt
12
0
12
1-2
n
12
3-4
q
EOF
: '
Multiwfn automatically shows the overview surface analysis. Therefore, search starts from the end. 
Stop after the second match, then take the second line printed -m2 | tail -n1
last occurrence tail -1
awk process the whole line that contains the keyword
'
    avg1=$(grep -m2 "Overall average value:" out.txt | tail -n1 | awk '{print $7}')
    min1=$(grep -m2 "Minimal value:" out.txt | tail -n1 | awk '{print $3}')
    max1=$(grep -m2 "Maximal value:" out.txt | tail -n1 | awk '{print $7}')
    avg2=$(grep "Overall average value:" out.txt | tail -1 | awk '{print $7}')
    min2=$(grep "Minimal value:" out.txt | tail -1 | awk '{print $3}')
    max2=$(grep "Maximal value:" out.txt | tail -1 | awk '{print $7}')
    echo "${dir%/};$avg1;$min1;$max1;$avg2;$min2;$max2">> vs.txt
    echo " >>> " $dir " done <<< "

  done
done
rm out.txt

echo "Done! Result has been outputted to vs.txt in current folder"
echo "Totally" $nfile "files were processed"
