define(DOTS, `ifelse($1, `3', three, not_three)')dnl
dnl print x dots
define(NDOTS, `ifelse($1, `0', `', `.NDOTS(decr($1))')')dnl
dnl make a list of numbered elements, e.g. '( x1, x2, x3 )'
dnl
define(R_LIST, `ifelse($1, `1', `x$1', `R_LIST(decr($1))`,' x$1')')dnl
define(LIST, `ifelse($1, `0', `()', (`R_LIST($1)'))')dnl
dnl
dnl
define(D_LIST, `ifelse($1, `1', `$$1', `D_LIST(decr($1)) $$1')')dnl
DOTS(3)
DOTS(4)

NDOTS(5)

LIST(0)
LIST(1)
LIST(3)

D_LIST(5)

dnl
define(NTH_ARG, $$1)
NTH_ARG(1)
