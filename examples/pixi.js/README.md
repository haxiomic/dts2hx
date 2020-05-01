# Pixi.js Haxe Example

Reproducing the [pixi.js text example](https://pixijs.io/examples/#/text/text.js)

- Open a terminal to this directory
- Install dependencies (pixi.js and dts2hx) with

	`npm install`

	A [`postinstall`](https://docs.npmjs.com/misc/scripts#examples) script will run `dts2hx` which generates **externs/pixi.js/**
- Build example with

	`haxe build.hxml`
- Open **index.html** to see the result!
