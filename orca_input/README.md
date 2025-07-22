For the convenience of automation and batch process, all the input files will share the same name but in different sub-directories.
- **orca.inp**: orca input file
- **[qsub.sh]**(https://github.com/er1czz/ORCA-scripts/blob/main/orca_input/qsub.sh): pbs job
  
[prep.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_input/prep.sh) will create a series of subdirs and copy header as orca.inp and qsub.sh of which
- remove the last line of [header](https://github.com/er1czz/ORCA-scripts/blob/main/orca_input/header) for the convenience of mannual copy of xyz coordinates below
- the placeholder name in [qsub.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_input/qsub.sh) will be replaced with subdir's


<details>
<summary>submit batch jobs (click to expand)</summary>

```ruby
#!/bin/bash
for dir in ./*/; do (cd "$dir" && qsub qsub.sh) done
```
</details>



Personal note: header is the header of my standard input, only xyz info is different, which shall be manually copied, respectively.
- orca.inp is an example ORCA input for water
- r<sup>2</sup>SCAN-3c, "[swiss army knife](https://doi.org/10.1063/5.0040021)", is generally considered a more modern, efficient, and accurate approach
- B3LYP/6-31G, outdated, sometimes unreliable
- For preoptimization, Avogadro<sup>2</sup> with MMFF94 will suffice
  - Occasionally, the DFT optimization may take extrordinary long time, it would be the best to terminate the job and start over with additional preoptimization, for example, by semi-empirical MOPAC PM6-D3H4 RHF
  - Another aspect for geometry optimization is the conformer search.
<img src="https://github.com/er1czz/ORCA-scripts/blob/main/orca_input/anie202205735fig0001m.jpg" width="600">

###### Image source:  https://doi.org/10.1002/anie.202205735
