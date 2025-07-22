import os, re

print(">> Isotropic Polarizability (au) <<")

current_dir = os.getcwd()
print(" target dir:", current_dir)

keyword = "Isotropic polarizability :"

for path, dirs, files in os.walk(current_dir):
    dirs.sort() # process subdirs by order
    for filename in files:
        if filename.endswith(".out"):
            file_path = os.path.join(path, filename)
            

            with open (file_path, 'r') as f:
                text = f.read()
                pattern = rf"{re.escape(keyword)}\s*([-+]?\d*\.?\d+(?:[eE][-+]?\d+)?)"
                match = re.search(pattern, text)
                if match:
                    val = match.group(1)
                    print(os.path.basename(path), " : ", val)
                else:
                    print(" - - Not found - -")
