#!/bin/bash
rm -f lens.txt
nfile=0
for dir in */ ; do
  for inf in $dir/*.xyz ; do
    ((nfile++))
    Multiwfn $inf -silent << EOF > out.txt
26
8
q
EOF
    len1=$(grep "Length of the three sides:" out.txt |awk '{print $6}')
    len2=$(grep "Length of the three sides:" out.txt |awk '{print $7}')
    len3=$(grep "Length of the three sides:" out.txt |awk '{print $8}')
    lens=($len1 $len2 $len3)

    sorted_numeric_array=($(printf "%s\n" "${lens[@]}" | sort -nr))
    echo "${dir%/}: ${sorted_numeric_array[*]}" >> lens.txt
  done
done
rm out.txt

echo "Done! Result has been outputted to lens.txt in current folder"
echo "Totally" $nfile "files were processed"
