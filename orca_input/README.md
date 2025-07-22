For the convenience of automation and batch process, 
  all the input files will share the same name but in different subdirectories.
- orca.inp
- qsub.sh

water.inp is an example of ORCA input file

prep.sh will create a series of subdirs and copy header as orca.inp and qsub.sh as it is.

Personal note: header is the header of my standard input, only xyz info is different, which shall be manually copied, respectively.
