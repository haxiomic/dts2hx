# Three.js Haxe Example

Reproducing the [three.js introduction example](https://threejs.org/docs/#manual/en/introduction/Creating-a-scene)

- Open a terminal to this directory
- Install dependencies (three, esbuild and dts2hx) with

	`npm install`

	A [`postinstall`](https://docs.npmjs.com/misc/scripts#examples) script will automatically run `dts2hx` which generates **.haxelib/three/**

- This example uses a three.js submodule [`OrbitControls`](https://threejs.org/docs/#examples/en/controls/OrbitControls) which is available in the examples directory within the three module. Normally, to use this module in JavaScript you will need to import it with
	```javascript
	require('three/examples/jsm/controls/OrbitControls')
	```

	To generate haxe externs for OrbitControls, you pass the same module name module name to `dts2hx`:
	```bash
	dts2hx --noGlobal three/examples/jsm/controls/OrbitControls
	```
	[(See "postinstall" in package.json)](./package.json#L7)

	We use `--noGlobal` because we intend to use the library via `require()` and a bundler instead of script tags

- Build example with

	`haxe build.hxml`
- Open **index.html** to see the result!
