cd ../examples

cd phaser
rm -rf .haxelib
npm install --ignore-scripts
../../cli.js --all
haxe build.hxml
cd ../

cd pixi.js
rm -rf .haxelib
npm install --ignore-scripts
../../cli.js --all
haxe build.hxml
cd ../

cd playcanvas
rm -rf .haxelib
npm install --ignore-scripts
../../cli.js --all
haxe build.hxml
cd ../

cd three
rm -rf .haxelib
npm install --ignore-scripts
../../cli.js three three/examples/jsm/controls/OrbitControls
haxe build.hxml
cd ../

cd babylonjs
rm -rf .haxelib
npm install --ignore-scripts
../../cli.js --all
haxe build.hxml
cd ../