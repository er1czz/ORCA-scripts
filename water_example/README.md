Example ORCA DFT task on HPC (PBS)
- Only one file for input: **water.inp**
- run ```qsub qsub.sh``` for pbs job submission
- The rest are the output


<details>

<summary>water.inp (click to expand)</summary>

```ruby
! B3LYP def2-SVP Opt

# My first ORCA calculation

*xyz 0 1
O        0.000000000      0.000000000      0.000000000
H        0.000000000      0.759337000      0.596043000
H        0.000000000     -0.759337000      0.596043000

*
```
</details>

<details>

<summary>qsub.sh (click to expand)</summary>

```ruby
#!/bin/bash
#PBS -l nodes=1:ppn=8
#PBS -l walltime=1:00:00
#PBS -N orca_test
#PBS -q M256
#PBS -j oe

export PATH="/share/apps/openmpi411/bin:$PATH"
export LD_LIBRARY_PATH="/share/apps/openmpi411/lib:$LD_LIBRARY_PATH"
export PATH="/share/apps/orca503:$PATH"
export LD_LIBRARY_PATH="/share/apps/orca503:$LD_LIBRARY_PATH"
export orca="/share/apps/orca503/orca"

export INPUT="water.inp"

cd $PBS_O_WORKDIR
echo "ORCA job start at" `date`

time $orca $INPUT > $(basename $INPUT .inp).out

echo "ORCA job finished at" `date`
echo "Work Dir is: $PBS_O_WORKDIR"
```
</details>
