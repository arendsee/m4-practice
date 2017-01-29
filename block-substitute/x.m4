patsubst(`
this, is ome th
but, this is pr
so what now?'
, `^', `    'dnl
)

define(TEXT,
`this, is ome th
but, this is pr
so what now?')

patsubst(`TEXT', `^',  `  ')

Damn, didn't work
