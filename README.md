# ORCA-scripts
- Leverage computational simulation to accelerate material discovery through collaboration with experiment team
- Perform DFT geometry optimization and compute properties such as polarizability, electrostatic potential, etc.
- Automate the workflow for upscaling
  
Personal notes for the automation of DFT calculation and data analysis, including
- [1] Create jobs in batch
- [2] Automate result analysis
- [3] Scripts mainly are written in bash, which is natively supported in Unix environment (some are with their equivalents in Python 3) 

Software packages:
- HPC
  - PBS 19.1.1
  - ORCA 5.1.0
- WSL
  - Multiwfn 3.8(dev) 
- Windows
  - Avogadro<sup>2</sup> 1.100.0
  - VMD 1.9.3

HPC Environment:
- CentOS Linux 7 3.10.0-957.el7.x86_64

PC Environment:
- WSL 2: Ubuntu-24.04
- Windows 11 Pro 26100.4652

Useful tips in Unix 
- create shortcut by alias
in ~/.bashrc add
```
alias q="qstat"
alias p="pestat"
alias qv="watch --interval=5 qstat"
alias m="orca_2mkl orca.gbw orca.molden -molden -anyorbs"
alias qq="qsub qsub.sh"
```
- ```source ~/.bashrc``` to make the alias effective
<img src="[https://your-image-url.type](https://www.faccts.de/wp-content/uploads/2024/06/Orca-Bildmarke-Hintergrund.png)" width="100">
### CC-BY-4.0
