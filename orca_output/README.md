# Output data analysis

- DM: Dipole Moment (Debye)
- Iso: Isotropic Polarizability (au)
- EN: output last Single Point Energy (Eh), the lowest energy through geometry optimization
- Gap: HOMO-LUMO energy gap (eV)
- Lens: length of three sides of the target molecule by descending order.
- Vncs: output electrostatic potential Vs values of NCS fragment (with atomic index 1-3)
  
Bash
- [post.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/post.sh)
  - show the wall time and if the job is done (terminated normally)
  - generate orca.molden for electrostatic potential (ESP) analysis
- [DM_extract.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/DM_extract.sh)
- [Iso_extract.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/Iso_extract.sh)
- [EN_extract.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/EN_extract.sh)
- [Gap_extract.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/Gap_extract.sh)
  
Python3
- [DM_extract.py](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/DM_extract.py)
- [Iso_extract.py](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/Iso_extract.py)
- [EN_extract.py](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/EN_extract.py)

Multiwfn by bash
- Dimension [Lens.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/Lens.sh)
- Electrostatic Potential (ESP)
  - Single fragment [Vncs.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/Vncs.sh)
  - e.g. NCS: please make sure the atoms in the target group take the first position of input coordinates (which gives atomic index 1, 2, 3)
  - Two fragments [Vcc.sh](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/Vcc.sh)
  - e.g. Two CC triple bonds: please make sure the atoms in the two target groups take the first two positions of input coordinates (in which two CC bonds give atomic index 1, 2, 3, 4)

![Molecular Electrostatic Potential Map](https://github.com/er1czz/ORCA-scripts/blob/main/orca_output/ESP.png)

Check out the tutorial from the Multiwfn dev [https://youtu.be/QFpDf_GimA0](https://youtu.be/QFpDf_GimA0)
