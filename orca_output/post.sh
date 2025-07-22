for i in {001..010}; do
        cd $i
        printf "[$i]\n"
        tail orca.out -n 2
        orca_2mkl orca.gbw orca.molden -molden -anyorbs
        cd ..
done
