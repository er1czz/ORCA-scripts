for i in {081..089}; do
	mkdir "$i"
	cp ../$i/orca.out $i/.
	cp ../$i/orca.xyz $i/.
	cp ../$i/orca.molden $i/.
done 
