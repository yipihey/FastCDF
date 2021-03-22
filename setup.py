import os, sys

from distutils.core import setup, Extension
from distutils import sysconfig

cpp_args = ['-std=c++11', '-stdlib=libc++', '-mmacosx-version-min=10.7', '-I/usr/local/include/eigen3']

ext_modules = [
    Extension(
    'FastCDF',
        ['fastCDF.cpp', 'fastCDFOnSample.cpp', 'nDDominanceAlone.cpp', 'Pybind11StOptCDF.cpp'],
        include_dirs=['pybind11/include'],
    language='c++',
    extra_compile_args = cpp_args,
    ),
]

setup(
    name='wrapped CDF code from StOpt',
    version='0.0.1',
    author='Modifications by Tom Abel',
    author_email='tabel@stanford.edu',
    description='Extracted CDF from StOpt library for an easy to use small library with minimal dependencies. , orignial code from https://gitlab.com/stochastic-control/StOpt/',
    ext_modules=ext_modules,
)
