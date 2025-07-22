For the convenience of automation and batch process, 
  all the input files will share the same name but in different subdirectories.
- orca.inp
- qsub.sh

orca.inp is an example of ORCA input file for water
- r<sup>2</sup>SCAN-3c, "[swiss army knife](https://doi.org/10.1063/5.0040021)", is generally considered a more modern, efficient, and accurate approach
- B3LYP/6-31G, outdated, sometimes unreliable

prep.sh will create a series of subdirs and copy header as orca.inp and qsub.sh of which
- remove the last line of header for the convenience of mannual copy of xyz coordinates below.
- qsub.sh: the placeholder name will be replaced with subdir's

Personal note: header is the header of my standard input, only xyz info is different, which shall be manually copied, respectively.
