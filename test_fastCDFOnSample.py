from FastCDF import *
import numpy as np


Ndim = 3
print("Dimensions: ", Ndim)
nbSimul = 100000
print("Samples:", nbSimul)
x = np.random.uniform(size=(Ndim,nbSimul));
y =  np.ones([nbSimul])

#  CDF at sample points
cdf= fastCDFOnSample(x,y)

print("CDF", cdf[:10], "And " , cdf[-10:])

