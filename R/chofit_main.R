# CHOFIT R package
# Nelson Green <nelson.green@gmail.com; E. Michael Perdue;
#
# Formula calculator for high resolution mass spectrometry, such as FT-ICR-MS.
# From a list of masses, potential chemical formulae are determined.  Formulae can
# have C,H, and O, and a user-defined list of elements (isotopes),
# typically N, S, P, Na, and 13C, but possibly others such as Cl, Si, B, etc.

# The outer non-CHO calculation forms all possible combinations.  Some non-CHO
# formula can be discarded if mass is too high, for instance, saving computational time.
# The inner CHO calculation uses the mass difference and understanding of the
# van Krevelen (vK) plot to quickly (less than 20 steps) arrive at a unique CHO
# formulae.  An equivalent CHO combinatorial algorithm may take 1000+ steps.

# The speed of this algorithm is useful for programming into an R workflow and
# incorporating in other statistical calculations.  Different initial conditions
# (elements, options) may be easily tested within the workflow (data-->graphing)
# allowing more ability to see the sensitivity to these condition in MS analysis.
#

# Some simple config data.frames (could be files later)
element<-data.frame(sym=c("N","S","P","13C"),mass=c(14,32,31,13),min=c(0,0,0,0),max=c(10,6,4,1))
options<-data.frame(ion.mode="N",error.mode="ppm",tolerance="0.4")

# I want to test a new way to program using vectorization in R.
# (1) Starting out I'll expand the non-CHO elements to a list (vector) of all
# possible combinations.
# (2) Then expanding the Mass list by generating a line for each combination.
# (3) With the mass list (and output) data.frame a vectorize calculation of the
# inner CHO formula should be possible.  Or a NULL result (deleting that row
# -- unless it is the only row) will result.
# This should result in a similar program output as the Pascal version
# I've already mass some progress on steps 1 & 2...below I will copy the code
# from history that represents that work (using expand.grid and rep(licating) data.frame)


