Example ORCA DFT task on HPC (PBS)
- Only one file for input: **water.inp**
- run ```qsub qsub.sh``` for pbs job submission
- The rest are the output


<details>

<summary>water.inp</summary>

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
