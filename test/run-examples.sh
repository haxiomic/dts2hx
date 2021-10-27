cd ../examples

# after installing node_modules we patch dts2hx in node_modules/.bin so that it refers to this repo's dts2hx build
function patch_dts2hx() {
	echo '#!/usr/bin/env node
		console.log("Remapping dts2hx to current build");
		require("../../../../dist/dts2hx.js");' > node_modules/.bin/dts2hx
}

function run_example() {
	pushd "$1"
	rm -rf .haxelib package_lock.json node_modules
	npm install --silent --ignore-scripts
	patch_dts2hx
	npm run postinstall
	haxe build.hxml || echo "TEST FALURE $1"
	popd
}

run_example phaser
run_example pixi.js
run_example playcanvas
run_example three
run_example babylonjs
run_example express