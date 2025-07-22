#!/bin/bash

# remove existing output file
rm -f dm.txt

echo ">> subdir : Dipole Moment (Debye) <<"

for subdir in */; do
  # find the last line of HOMO and the last field
  DM=$(grep "Magnitude (Debye)      :" "$subdir"/orca.out | tail -n 1 | awk '{print $NF}')
  echo "${subdir%/} : $DM"
# if you want save the output
  echo "${subdir%/} : $DM">> dm.txt
done

echo "Done! Result has been saved to dm.txt"
