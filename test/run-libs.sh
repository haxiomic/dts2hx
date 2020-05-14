rm -rf _generated-libs

# Added --noLibWrap to reduce ts.* type duplication
# By using --noLibWrap, ts.* libs can overrwrite each other, this adds a test order dependence
# @! consider removing when types are mapped to haxe stb lib
../cli.js node --output _generated-libs --noLibWrap
# Convert the three + one of its submodules
../cli.js three three/examples/jsm/controls/OrbitControls --output _generated-libs --noLibWrap
../cli.js jquery --output _generated-libs --noLibWrap