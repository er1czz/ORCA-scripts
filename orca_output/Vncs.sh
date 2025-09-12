#!/bin/bash

rm -f vncs.txt
nfile=0
for dir in */ ; do
  for inf in $dir/*.molden ; do
    ((nfile++))
    Multiwfn $inf -silent << EOF > out.txt
12
0
12
1-3
q
EOF
: '
last occurrence tail -1 
awk process the whole line that contains the keyword
'
    avg=$(grep "Overall average value:" out.txt | tail -1 | awk '{print $7}')
    min=$(grep "Minimal value:" out.txt | tail -1 | awk '{print $3}')
    max=$(grep "Maximal value:" out.txt | tail -1 | awk '{print $7}')
    echo "${dir%/};$avg;$min;$max">> vncs.txt
    echo " >>> " $dir " done <<< "
    
  done
done
rm out.txt

echo "Done! Result has been outputted to vncs.txt in current folder"
echo "Totally" $nfile "files were processed"
