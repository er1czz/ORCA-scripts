# ORCA-scripts
<img src="https://www.faccts.de/wp-content/uploads/2024/06/Orca-Bildmarke-Hintergrund.png" width="100" height="100">

- Leverage computational simulation to accelerate material discovery through collaboration with experiment team
- Perform DFT geometry optimization and compute properties such as polarizability, electrostatic potential, etc.
- Automate the workflow for upscaling
  
Personal notes for the automation of DFT calculation and data analysis, including
- [1] Create jobs in batch
- [2] Automate result analysis
- [3] Scripts mainly are written in bash, which is natively supported in Unix environment (some are with their equivalents in Python 3) 

Software packages:
- HPC: CentOS Linux 7 3.10.0-957.el7.x86_64
  - PBS 19.1.1
  - ORCA 5.1.0
  - Multiwfn 3.8(dev) 
- Windows 11 Pro 26100.4652
  - Avogadro<sup>2</sup> 1.100.0
  - VMD 1.9.3
  - WSL 2: Ubuntu-24.04

Create shortcuts in Unix via alias (with vim)
- ```vi  ~/.bashrc```
- copy below to the end
```ruby
alias q="qstat"
alias p="pestat"
alias qv="watch --interval=5 qstat"
alias m="orca_2mkl orca.gbw orca.molden -molden -anyorbs"
alias qq="qsub qsub.sh"
```
- ```wq``` write and quite
- ```source ~/.bashrc``` to make the change effective

Sections:
- [1] example solo job run (water): [https://github.com/er1czz/ORCA-scripts/tree/main/water_example](https://github.com/er1czz/ORCA-scripts/tree/main/water_example)
- [2] scripts for batch job preparation [https://github.com/er1czz/ORCA-scripts/tree/main/orca_input](https://github.com/er1czz/ORCA-scripts/tree/main/orca_input)
- [3] scripts for batch job data analysis [https://github.com/er1czz/ORCA-scripts/tree/main/orca_output](https://github.com/er1czz/ORCA-scripts/tree/main/orca_output)


Tips for fast PuTTY login through Shortcut on Windows
- From Shortcut property, append the Target with the login info
- Example ```ruby
   "C:\Program Files\PuTTY\putty.exe" -ssh username@ip_address -pw pa22w0rd -P p0rt```

### CC-BY-4.0
