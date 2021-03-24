# FastCDF

Routines to calculate empirical cumulative distribution functions from data as described by [Langrené and Warin (2020)](https://arxiv.org/abs/2005.03246).

The source files are from their [StOpt library](https://gitlab.com/stochastic-control/StOpt) and are incorporated here as a small standalone library that only has [eigen3](https://eigen.tuxfamily.org/index.php?title=Main_Page) as dependence and only needs boost for the testing functions but not to install as a python package.

After downloading/cloning this repository

```bash
python setup.py install
```

should be all that is needed to have your c++ compiler compile the package and install it to your distribution.

The two python commands that get exposed by this library are fastCDF and fastCDFOnSample.

Have a look at [NotebookFastCDF.ipynb](https://github.com/yipihey/FastCDF/blob/master/NotebookFastCDF.ipynb)

We also provide a simple Makefile to compile it the commandline test functions.

![ECDF](./Plot_fastCDFOnSample.png?raw=true )

![FastCDF](./Plot_mulitvariateFastCDF.png?raw=true )

Is another 2 dimensional example using one million points.
