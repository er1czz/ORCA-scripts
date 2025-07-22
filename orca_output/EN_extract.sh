#!/bin/bash

# remove existing output file
rm -f energy.txt

echo ">> subdir : Energy (Eh) <<"

for subdir in */; do
  # find the last pattern match
  EN=$(grep "FINAL SINGLE POINT ENERGY" "$subdir"/orca.out | tail -n 1 | awk '{print $NF}')
  echo "${subdir%/} : $EN"
# if you want save the output
  echo "${subdir%/} : $EN">> energy.txt
done

echo "Done! Result has been saved to energy.txt"
