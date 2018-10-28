/*
  Whittaker and Robinson periodogram; Whittaker and Robinson (1924),
  Legendre & Legendre (1998, 2012, Section 12.4.1).
  x : a vector of quantitative data
  T1: first period to analyse
  T2: last period to analyse (T2 <= n/2)
  nperm: number of permutations for tests of significance
  mult : methods for correction for multiple testing; "sidak" or "bonferroni"

  License: GPL-2 
  Authors: Pierre Legendre, September 2012; Guillaume Guenard, March 2014 - October 2018,
  Routine registration function
*/

#include <R.h>
#include <Rinternals.h>
#include <R_ext/Rdynload.h>

void R_init_WR(DllInfo* info) {
  R_registerRoutines(info, NULL, NULL, NULL, NULL);
  R_useDynamicSymbols(info, TRUE);
}
