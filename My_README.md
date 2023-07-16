Personal notes while using this repository

# Install
Create a conda environment
```shell
mamba env create -f environment.yml
```
Install ColabFold & modify associated files
```shell
conda activate colabfold-3.10-env
bash install_colabfold.sh
```

Run batch prediction. By default, it uses `alphafold2_ptm` for monomers and `alphafold2_multimer_v3` for complexes
```shell
colabfold_batch --templates --amber tasks/examples/ tasks/examples/outputdir/
```

- For prediction of multimers, insert `:` between the protein sequences.
- Multiple `>` header lines with sequences in a FASTA format file yield multiple predictions at once in the specified output directory.
- Note: for same job, only one model will be loaded. So separate monomer and complex tasks to make sure using the right model.
