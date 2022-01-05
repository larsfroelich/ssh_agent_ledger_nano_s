# SSH-Agent - Ledger-Nano-S
This repository contains all information required for setting up the ledger nano S as an SSH agent

# Step-by-Step
This is a good approach to getting it working with the fewest snags:
1. Install python 27
2. install libusb `sudo apt-get install libusb-1.0-0-dev`
3. Install python-dev `sudo apt-get install python-dev`
4. Install udev `sudo apt-get install -y libudev-dev`
5. Install windows visual studio compiler thingy using [github](https://github.com/reider-roque/sulley-win-installer/raw/master/VCForPython27.msi) or [web archive](https://web.archive.org/web/20190720195601/https://download.microsoft.com/download/7/9/6/796EF2E4-801B-4FC4-AB28-B59FBF6D907B/VCForPython27.msi)
6. install modified version of ecpy-1.2.3 (using https://stackoverflow.com/a/57698142 )
7. pip install wheel
8. pip install Cython
9. You have 3 options to install hidapi, try them in this order:
    1. pip install hidapi
    2. pip install hidapi==0.9.0.post3 (newer versions didn't work for me, use [0.9.0.post3](https://pypi.org/project/hidapi/0.9.0.post3/) instead)
    3. Install hidapi via the windows-setup.py script -> https://github.com/gbishop/cython-hidapi
10. pip install ledgerblue


# Troubleshooting
In case you run into a dead end, try these
- pip install -U setuptools
