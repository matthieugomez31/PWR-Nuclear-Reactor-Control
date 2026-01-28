# 1) Make a backup of the folder EI_CS_Modelica
# 2) Copy this patch in the folder EI_CS_Modelica
# 3) Execute the patch

import os

def patch(path, old_str, new_str) :
    with open(path, 'r') as f:
        old = f.read()
    new = old.replace(old_str, new_str)
    with open(path, 'w') as f:
        f.write(new)
    return

if __name__ == "__main__" :
    for walk in [os.walk("BFE"), os.walk("cooling_system")] :
        for root, _, files in walk:
            for filename in files :
                # for all files, import the ThermoSysPro package in the EI package
                patch(os.path.join(root,filename),
                      old_str="import ThermoSysPro;",
                      new_str="import EI_CS_Modelica.ThermoSysPro;")

    # Prevent OM to load unexpected version of ThermoSysPro
    patch("package.mo",
          old_str=',\n      ThermoSysPro(version="4.0")',
          new_str="")
