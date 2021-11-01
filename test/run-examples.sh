cd ../examples

RED="\033[38;1;6m"
CYAN="\033[38;5;6m"
RESET="\033[0m"

# after installing node_modules we patch dts2hx in node_modules/.bin so that it refers to this repo's dts2hx build
function patch_dts2hx() {
	echo '#!/usr/bin/env node
		console.log("Remapping dts2hx to current build");
		require("../../../../dist/dts2hx.js");' > node_modules/.bin/dts2hx
}

function run_example() {
	pushd "$1"
	rm -rf package-lock.json node_modules
	npm install

	# regeneate externs with current build of dts2hx
	patch_dts2hx
	rm -rf .haxelib
	npm run postinstall

	haxe build.hxml && echo -e "${CYAN}TEST SUCCESS $1${RESET}" || echo -e "${RED}TEST FALURE $1${RESET}"
	popd
}

run_example phaser
run_example pixi.js
run_example playcanvas
run_example three
run_example babylonjs
run_example express