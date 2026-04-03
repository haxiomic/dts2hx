package node;

@:jsRequire("node:readline") @valueModuleOnly extern class NodeReadline {
	/**
		The `readline.createInterface()` method creates a new `readline.Interface` instance.
		
		```js
		import readline from 'node:readline';
		const rl = readline.createInterface({
		  input: process.stdin,
		  output: process.stdout,
		});
		```
		
		Once the `readline.Interface` instance is created, the most common case is to
		listen for the `'line'` event:
		
		```js
		rl.on('line', (line) => {
		  console.log(`Received: ${line}`);
		});
		```
		
		If `terminal` is `true` for this instance then the `output` stream will get
		the best compatibility if it defines an `output.columns` property and emits
		a `'resize'` event on the `output` if or when the columns ever change
		(`process.stdout` does this automatically when it is a TTY).
		
		When creating a `readline.Interface` using `stdin` as input, the program
		will not terminate until it receives an [EOF character](https://en.wikipedia.org/wiki/End-of-file#EOF_character). To exit without
		waiting for user input, call `process.stdin.unref()`.
	**/
	@:overload(function(options:node.readline.ReadLineOptions):node.readline.Interface { })
	static function createInterface(input:global.nodejs.ReadableStream, ?output:global.nodejs.WritableStream, ?completer:ts.AnyOf2<node.readline.Completer, node.readline.AsyncCompleter>, ?terminal:Bool):node.readline.Interface;
	/**
		The `readline.emitKeypressEvents()` method causes the given `Readable` stream to begin emitting `'keypress'` events corresponding to received input.
		
		Optionally, `interface` specifies a `readline.Interface` instance for which
		autocompletion is disabled when copy-pasted input is detected.
		
		If the `stream` is a `TTY`, then it must be in raw mode.
		
		This is automatically called by any readline instance on its `input` if the `input` is a terminal. Closing the `readline` instance does not stop
		the `input` from emitting `'keypress'` events.
		
		```js
		readline.emitKeypressEvents(process.stdin);
		if (process.stdin.isTTY)
		  process.stdin.setRawMode(true);
		```
		
		## Example: Tiny CLI
		
		The following example illustrates the use of `readline.Interface` class to
		implement a small command-line interface:
		
		```js
		import readline from 'node:readline';
		const rl = readline.createInterface({
		  input: process.stdin,
		  output: process.stdout,
		  prompt: 'OHAI> ',
		});
		
		rl.prompt();
		
		rl.on('line', (line) => {
		  switch (line.trim()) {
		    case 'hello':
		      console.log('world!');
		      break;
		    default:
		      console.log(`Say what? I might have heard '${line.trim()}'`);
		      break;
		  }
		  rl.prompt();
		}).on('close', () => {
		  console.log('Have a great day!');
		  process.exit(0);
		});
		```
		
		## Example: Read file stream line-by-Line
		
		A common use case for `readline` is to consume an input file one line at a
		time. The easiest way to do so is leveraging the `fs.ReadStream` API as
		well as a `for await...of` loop:
		
		```js
		import fs from 'node:fs';
		import readline from 'node:readline';
		
		async function processLineByLine() {
		  const fileStream = fs.createReadStream('input.txt');
		
		  const rl = readline.createInterface({
		    input: fileStream,
		    crlfDelay: Infinity,
		  });
		  // Note: we use the crlfDelay option to recognize all instances of CR LF
		  // ('\r\n') in input.txt as a single line break.
		
		  for await (const line of rl) {
		    // Each line in input.txt will be successively available here as `line`.
		    console.log(`Line from file: ${line}`);
		  }
		}
		
		processLineByLine();
		```
		
		Alternatively, one could use the `'line'` event:
		
		```js
		import fs from 'node:fs';
		import readline from 'node:readline';
		
		const rl = readline.createInterface({
		  input: fs.createReadStream('sample.txt'),
		  crlfDelay: Infinity,
		});
		
		rl.on('line', (line) => {
		  console.log(`Line from file: ${line}`);
		});
		```
		
		Currently, `for await...of` loop can be a bit slower. If `async` / `await` flow and speed are both essential, a mixed approach can be applied:
		
		```js
		import { once } from 'node:events';
		import { createReadStream } from 'node:fs';
		import { createInterface } from 'node:readline';
		
		(async function processLineByLine() {
		  try {
		    const rl = createInterface({
		      input: createReadStream('big-file.txt'),
		      crlfDelay: Infinity,
		    });
		
		    rl.on('line', (line) => {
		      // Process the line.
		    });
		
		    await once(rl, 'close');
		
		    console.log('File processed.');
		  } catch (err) {
		    console.error(err);
		  }
		})();
		```
	**/
	static function emitKeypressEvents(stream:global.nodejs.ReadableStream, ?readlineInterface:node.readline.Interface):Void;
	/**
		The `readline.clearLine()` method clears current line of given [TTY](https://nodejs.org/docs/https://nodejs.org/docs/latest-v20.x/api/tty.html) stream
		in a specified direction identified by `dir`.
	**/
	static function clearLine(stream:global.nodejs.WritableStream, dir:node.readline.Direction, ?callback:() -> Void):Bool;
	/**
		The `readline.clearScreenDown()` method clears the given [TTY](https://nodejs.org/docs/https://nodejs.org/docs/latest-v20.x/api/tty.html) stream from
		the current position of the cursor down.
	**/
	static function clearScreenDown(stream:global.nodejs.WritableStream, ?callback:() -> Void):Bool;
	/**
		The `readline.cursorTo()` method moves cursor to the specified position in a
		given [TTY](https://nodejs.org/docs/https://nodejs.org/docs/latest-v20.x/api/tty.html) `stream`.
	**/
	static function cursorTo(stream:global.nodejs.WritableStream, x:Float, ?y:Float, ?callback:() -> Void):Bool;
	/**
		The `readline.moveCursor()` method moves the cursor _relative_ to its current
		position in a given [TTY](https://nodejs.org/docs/https://nodejs.org/docs/latest-v20.x/api/tty.html) `stream`.
	**/
	static function moveCursor(stream:global.nodejs.WritableStream, dx:Float, dy:Float, ?callback:() -> Void):Bool;
}