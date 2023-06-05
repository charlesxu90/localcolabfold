Personal notes while using this repository

# Install
Common dependencies are already install in Conda base environment. Just need to install with the following command.

```shell
bash install_colabbatch_linux.sh
```

Add to $PATH if need to use more often.
```shell
export PATH="/home/xiaopeng/Desktop/Struct_pred/ref_works/localcolabfold/localcolabfold/colabfold-conda/bin:\$PATH"
```
Or activate the environment by using conda
```shell
conda activate /home/xiaopeng/Desktop/Struct_pred/ref_works/localcolabfold/localcolabfold/colabfold-conda
```

Run batch prediction. By default, it uses `alphafold2_ptm` for monomers and `alphafold2_multimer_v3` for complexes
```shell
colabfold_batch --templates --amber tasks/examples/ tasks/examples/outputdir/
```

- For prediction of multimers, insert `:` between the protein sequences.
- Multiple `>` header lines with sequences in a FASTA format file yield multiple predictions at once in the specified output directory.
- Note: for same job, only one model will be loaded. So separate monomer and complex tasks to make sure using the right model.
