This project stub has two main parts:

- Files to simulate the e- beam from injection to the beginning of the W-chicane (the "BEGBC20" element in the lattice), pulled from: https://github.com/sanjeev-one/SLAC-Containers
  - The Bmad notebook is a modification of the original; in particular, the Impact-T simulation is not performed. The beam is tracked through the rest of the lattice  usimg 1D space-
    charge and CSR, w/ variation in the L1 and L2 phases, and saved to an h5 files after being upsampeld to 1e6 particles with a KDE. This produces more stable behavior in subsequent
    tracking with pyDFCSR
- Files to track the output of the above simulation through the W-chicane and FF using the 2D CSR code (https://github.com/slaclab/pyDFCSR), and analyze the subsequent output.
