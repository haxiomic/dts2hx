rm -rf _generated-libs

../cli.js node --output _generated-libs
# Convert the three + one of its submodules
../cli.js three three/examples/jsm/controls/OrbitControls --output _generated-libs
../cli.js jquery --output _generated-libs
../cli.js express --output _generated-libs