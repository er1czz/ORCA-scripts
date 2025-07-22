for i in {001..010};
do
  mkdir "$i"
  cp header $i/orca.inp
  sed -i "s|* xyz 0 1| |g" $i/orca.inp

  cp qsub.sh $i/.
  sed -i "s|_r_|$i|g" $i/qsub.sh

done
