mkdir data_copy
for i in {001..100}; do
	mkdir "$i"
	cp ../$i/orca.out $i/.
	cp ../$i/orca.xyz $i/.
	cp ../$i/orca.molden $i/.
done 
