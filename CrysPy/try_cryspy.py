import os, sys
import cryspy

current_dir = os.path.dirname(sys.argv[0])
path_to_project_dir = os.path.join(current_dir, "cryspy-master", "examples", "Fe3O4_0T_powder_1d")
main_rcif_path = os.path.join(path_to_project_dir, "main.rcif")
main_rcif_content = ""

with open(main_rcif_path, 'r') as f:
    for line in f.readlines():
        if '_cell_length_a' in line:
            line = '_cell_length_a 8.7()' + '\r\n'
        if 'Fe3A cani' in line:
            line = 'Fe3A cani  -3.46822 -3.46822 -3.46822 0.0 0.0 0.0' + '\r\n'
        main_rcif_content += line

with open(main_rcif_path, 'w') as f:
    f.write(main_rcif_content)

model = cryspy.rhochi_read_file(main_rcif_path)
res = model.refine()


