# Whittaker-Robinson

Functions and methods to:
1. calculate the Whittaker-Robinson Periodogram,
2. test the statistical significance of its coefficients by permutation, and
3. display the coefficients with their statistical significance.

The periodogram calculations and tests are performed using a C function
that proceed by accumulating and counting offset locations in the time
series, allowing minimal data manipulation. In particular, it avoids
having to explicitly build a Buy-Ballot table, thereby saving
computation overhead.

A version of these functions can be found on package adespatial, which is
available on the CRAN: https://cran.r-project.org/web/packages/adespatial/
