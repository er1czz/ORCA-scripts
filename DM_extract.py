import os, re
print(">> Dipole Moment (Debye) <<")
current_dir = os.getcwd()
print(" target dir:", current_dir, "\n")

for path, dirs, files in os.walk(current_dir):
    dirs.sort() # process subdirs by order
    for filename in files:
        if filename.endswith(".out"):
            file_path = os.path.join(path, filename)
            

            with open (file_path, 'r') as f:
                text = f.read()
                
                # Isotropic Polarizability
                keyword = "Magnitude (Debye)      :"
                pattern = rf"{re.escape(keyword)}\s*([-+]?\d*\.?\d+(?:[eE][-+]?\d+)?)"
                match = re.search(pattern, text)
                if match:
                    val = match.group(1)
                    print(os.path.basename(path), " : ", val)
                else:
                    print(" - - Not found - -")
