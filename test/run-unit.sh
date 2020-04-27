rm -rf _generated-unit

../cli.js ./unit/ambient --verbose --output _generated-unit
../cli.js ./unit/built-in --verbose --output _generated-unit
../cli.js ./unit/class --verbose --output _generated-unit
../cli.js ./unit/enum --verbose --output _generated-unit
../cli.js ./unit/export= --verbose --output _generated-unit
../cli.js ./unit/export-default --verbose --output _generated-unit
../cli.js ./unit/interface --verbose --output _generated-unit
../cli.js ./unit/named-tuple --verbose --output _generated-unit
../cli.js ./unit/symbols --verbose --output _generated-unit
../cli.js ./unit/tripple-slash-references --verbose --output _generated-unit
../cli.js ./unit/type-parameters --verbose --output _generated-unit
../cli.js ./unit/types --verbose --output _generated-unit