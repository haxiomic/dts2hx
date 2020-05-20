rm -rf _generated-libs

../cli.js node --output _generated-libs --noDts2hxVersion
# Convert the three + one of its submodules
../cli.js three three/examples/jsm/controls/OrbitControls --output _generated-libs --noDts2hxVersion
../cli.js jquery --output _generated-libs --noDts2hxVersion
../cli.js express --output _generated-libs --noDts2hxVersion
../cli.js vue --output _generated-libs --noDts2hxVersion