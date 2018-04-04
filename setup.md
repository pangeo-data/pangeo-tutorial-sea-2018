Getting Started with Pangeo
===============

This notebooks in this tutorial are designed to run on the Cheyenne High-Performance Computer, Pangeo's JupyterHub deployed on Google Compute Platform, or on a local computer (see Running Locally below). The larger sample datasets are only be available on GCP and Cheyenne but smaller versions of the same datasets can be downloaded from this link ([TODO]) when running locally.

## Setup Python for working on a personal computer or on Cheyenne

#### Download Miniconda

    # for linux
    $ wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

    # for osx
    $ wget https://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O miniconda.sh

    # for windows
    # go to: https://conda.io/miniconda.html

#### Install Miniconda

    $ bash miniconda.sh
    # follow instructions

#### Install Pangeo Environment

    $ conda env create --file environment.yml

#### Activate the Pangeo Environment

    $ source activate pangeo

#### Install the necessary Jupyter Plugins

    $ jupyter labextension install jupyterlab_bokeh

#### Run a quick test

    $ python

    >>> import xarray as xr
    >>> xr.show_versions()  
    >>> xr.tutorial.load_dataset('air_temperature')
    >>> xr.tutorial.load_dataset('rasm')


## Launching Jupyter locally

    $ jupyter lab

## Launching Jupyter and Dask on Cheyenne

  1. Install dask-jobqueue

         $ pip install git+https://github.com/dask/dask-jobqueue.git

  1. Launching jupyter lab requires a few extra steps

         $ qinteractive -l walltime=4:00:00
         $ start-notebook

## Access to Pangeo on Google Cloud

We are running a JupyterHub on Google Compute Platform. To access this service:
  - Go to http://pangeo.pydata.org/
  - Authenticate with your GitHub Account. If you don't have a Github Account, go here first: https://github.com/join
  - Open a new terminal using the jupyer lab interface
  - Clone this repository
        git clone https://github.com/pangeo-data/pangeo-tutorial-sea-2018.git tutorial
