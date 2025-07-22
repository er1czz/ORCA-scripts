import os, re
print(">> Single Point Energy (Eh) <<")

current_dir = os.getcwd()
print(" target dir:", current_dir)

keyword = "FINAL SINGLE POINT ENERGY"

for path, dirs, files in os.walk(current_dir):
    dirs.sort() # process subdirs by order
    for filename in files:
        if filename.endswith(".out"):
            file_path = os.path.join(path, filename)
            

            with open (file_path, 'r') as f:
                text = f.read()
                pattern = rf"{re.escape(keyword)}\s*([-+]?\d*\.?\d+(?:[eE][-+]?\d+)?)"
                matches = re.findall(pattern, text)
                if matches:
                    val = matches[-1]
                    print(os.path.basename(path), " : ", val)
                else:
                    print(" - - Not found - -")
