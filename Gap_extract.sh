#!/bin/bash

echo "HOMO-LUMO energy gap (eV)"

for subdir in */; do
  
  # reverse find keyword and save the rest of the text after the keyword to tmp.out
  tac "$subdir"/orca.out | awk '!flag; /ORBITAL ENERGIES/{flag = 1 }; ' | tac > tmp.out

  # remove the text after keyword
  sed -i '/Total SCF time/q' tmp.out

  # find the last line and the fourth number
  # assume system is of closed shell  
  # assume the orbital data is arrange from HOMO (OCC=2) to LUMO (OCC=0) with value from high to low


  # find the last line of HOMO and the last field
  homo_en=$(grep "   2.0000 " tmp.out | tail -n 1 | awk '{print $NF}')
  #echo "homo : $homo_en eV"

  # find the first line of LUMO and the last field
  lumo_en=$(grep "   0.0000 " tmp.out | head -n 1 | awk '{print $NF}')
  #echo "lumo : $lumo_en eV"

  #Check if energies were found
  if [ -z "$homo_en" ] || [ -z "$lumo_en" ]; then
    echo "Error: Could not find HOMO or LUMO energies in orca.out"
  exit 1
  fi

  # Calculate the HOMO-LUMO gap (eV)
  gap=$(echo "$lumo_en - $homo_en" | bc -l)
  echo "${subdir%/} : $gap"

  # remove tmp file
  if [ -f "tmp.out" ]; then
    rm "tmp.out"
  fi

done
