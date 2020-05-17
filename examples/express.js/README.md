# Express Haxe Example

[Express Hello World Example](https://expressjs.com/en/starter/hello-world.html)

- Open a terminal to this directory
- Install dependencies (express and dts2hx) with

	`npm install`

	A [`postinstall`](https://docs.npmjs.com/misc/scripts#examples) script will automatically run `dts2hx` which generates **.haxelib/express/** and it's dependencies

- Build the server example with

	`haxe build.hxml`

	This will generate a file called `server.js`

- Run the server with `node server.js`, open [http://localhost:3000](http://localhost:3000) to see it live
