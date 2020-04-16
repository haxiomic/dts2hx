rm -rf _generated

../cli.js ./unit/ambient-modules --verbose --output _generated
../cli.js ./unit/built-in --verbose --output _generated
../cli.js ./unit/class --verbose --output _generated
../cli.js ./unit/enum --verbose --output _generated
../cli.js ./unit/export-modules --verbose --output _generated
../cli.js ./unit/interface --verbose --output _generated
../cli.js ./unit/named-tuple --verbose --output _generated
../cli.js ./unit/symbols --verbose --output _generated
../cli.js ./unit/tripple-slash-references --verbose --output _generated
../cli.js ./unit/type-parameters --verbose --output _generated
../cli.js ./unit/types --verbose --output _generated