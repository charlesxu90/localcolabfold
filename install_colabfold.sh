#!/bin/bash
CWD=$(pwd)
# ColabFold install
pip install "colabfold[alphafold] @ git+https://github.com/sokrypton/ColabFold"
pip install --no-warn-conflicts "colabfold[alphafold-minus-jax] @ git+https://github.com/sokrypton/ColabFold" tensorflow==2.12.0
 
# Use 'Agg' for non-GUI backend
cd ~/miniconda3/envs/colabfold-3.10-env/lib/python3.10/site-packages/colabfold
sed -i -e "s#from matplotlib import pyplot as plt#import matplotlib\nmatplotlib.use('Agg')\nimport matplotlib.pyplot as plt#g" plot.py
modify the default params directory
sed -i -e "s#appdirs.user_cache_dir(__package__ or \"colabfold\")#\"./colabfold_model\"#g" download.py


# Download model weights
cd ${CWD}
python -m colabfold.download

echo "Download of alphafold2 weights finished."
echo "-----------------------------------------"
echo "Installation of colabfold_batch finished."
echo "For more details, please type 'colabfold_batch --help'."
