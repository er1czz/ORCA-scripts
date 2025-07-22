#!/bin/bash

# remove existing output file
rm -f iso.txt

echo ">> subdir : Isotropic Polarizability (au) <<"

for subdir in */; do
  # find the last pattern match
  val=$(grep "Isotropic polarizability :" "$subdir"/orca.out | tail -n 1 | awk '{print $NF}')
  echo "${subdir%/} : $val"
# if you want save the output
  echo "${subdir%/} : $val">> iso.txt
done

echo "Done! Result has been saved to iso.txt"
