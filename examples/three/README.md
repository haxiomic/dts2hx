# Three.js Haxe Example

Reproducing the [three.js introduction example](https://threejs.org/docs/#manual/en/introduction/Creating-a-scene)

- Open a terminal to this directory
- Install dependencies (three, esbuild and dts2hx) with

	`npm install`

	A [`postinstall`](https://docs.npmjs.com/misc/scripts#examples) script will run `dts2hx` which generates **externs/three/**
- Build example with

	`haxe build.hxml`
- Open **index.html** to see the result!
