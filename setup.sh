#/bin/bash

# download external data and extract into aux directory
wget https://zenodo.org/record/4607413/files/FaIRv2.0.0-alpha_aux_input-data.zip
unzip FaIRv2.0.0-alpha_aux_input-data.zip
mv FaIRv2.0.0-alpha/aux ./
rmdir FaIRv2.0.0-alpha
rm FaIRv2.0.0-alpha_aux_input-data.zip

# make output directories
mkdir -p docs/manuscript/figures/
mkdir -p aux/parameter-sets/CMIP6-climresp_Cummins/
mkdir -p aux/parameter-sets/perturbed-parameters/gas_params/
mkdir -p aux/parameter-sets/perturbed-parameters/climresp_params/FULL/
mkdir -p aux/parameter-sets/perturbed-parameters/climresp_params/ALTERNATIVE/
mkdir -p aux/parameter-sets/perturbed-parameters/extforc_sfs
mkdir -p aux/output-data/global-warming-index
mkdir -p aux/output-data/global-warming-index/results
mkdir -p aux/output-data/RCMIP
