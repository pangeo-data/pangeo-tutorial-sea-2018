#!/usr/bin/env bash

source activate pangeo

# cartopy data
curl -O https://raw.githubusercontent.com/SciTools/cartopy/master/tools/feature_download.py
python ./feature_download.py physical &

python -c "from xarray.tutorial import load_dataset; ds = load_dataset('rasm')" &
python -c "from xarray.tutorial import load_dataset; ds = load_dataset('air_temperature')" &

wait

#
