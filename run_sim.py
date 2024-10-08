#%matplotlib widget 
import sys
import numpy as np
import mpi4py
import os

from pyDFCSR_2D import CSR2D
import matplotlib.pyplot as plt
from matplotlib import cm
import h5py

from pyDFCSR_2D.tools import plot_surface

import pickle
import os
import re

import shutil

def main(config_path):
    testCSR = CSR2D(input_file= config_path);
    print(dir(testCSR));
    testCSR.run();
    """try:
        print("Running sim at configuration path:", config_path);
        testCSR = CSR2D(input_file= config_path);
        print(dir(testCSR));
        testCSR.run();
        print("Done");
        return 0;
    except:
        print("Something went wrong");
        return 1;    
    """

if __name__ == "__main__":
    import sys
    if len(sys.argv) < 2:
        print("Usage: python script.py <config_path>");
        sys.exit(1)
    config_path = sys.argv[1]
    exit_code = main(config_path)
    sys.exit(exit_code)