package js.html;

/**
	The **`console`** object provides access to the debugging console (e.g., the Web console in Firefox).
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/console)
**/
typedef Console = {
	/**
		The **`console.assert()`** static method writes an error message to the console if the assertion is false.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/assert_static)
		
		`console.assert()` writes a message if `value` is [falsy](https://developer.mozilla.org/en-US/docs/Glossary/Falsy) or omitted. It only
		writes a message and does not otherwise affect execution. The output always
		starts with `"Assertion failed"`. If provided, `message` is formatted using
		[`util.format()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilformatformat-args).
		
		If `value` is [truthy](https://developer.mozilla.org/en-US/docs/Glossary/Truthy), nothing happens.
		
		```js
		console.assert(true, 'does nothing');
		
		console.assert(false, 'Whoops %s work', 'didn\'t');
		// Assertion failed: Whoops didn't work
		
		console.assert();
		// Assertion failed
		```
	**/
	@:overload(function(value:Dynamic, ?message:String, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function assert(?condition:Bool, data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.clear()`** static method clears the console if possible.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/clear_static)
		
		When `stdout` is a TTY, calling `console.clear()` will attempt to clear the
		TTY. When `stdout` is not a TTY, this method does nothing.
		
		The specific operation of `console.clear()` can vary across operating systems
		and terminal types. For most Linux operating systems, `console.clear()` operates similarly to the `clear` shell command. On Windows, `console.clear()` will clear only the output in the
		current terminal viewport for the Node.js
		binary.
	**/
	@:overload(function():Void { })
	function clear():Void;
	/**
		The **`console.count()`** static method logs the number of times that this particular call to `count()` has been called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/count_static)
		
		Maintains an internal counter specific to `label` and outputs to `stdout` the
		number of times `console.count()` has been called with the given `label`.
		
		```js
		> console.count()
		default: 1
		undefined
		> console.count('default')
		default: 2
		undefined
		> console.count('abc')
		abc: 1
		undefined
		> console.count('xyz')
		xyz: 1
		undefined
		> console.count('abc')
		abc: 2
		undefined
		> console.count()
		default: 3
		undefined
		>
		```
	**/
	@:overload(function(?label:String):Void { })
	function count(?label:String):Void;
	/**
		The **`console.countReset()`** static method resets counter used with console/count_static.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/countReset_static)
		
		Resets the internal counter specific to `label`.
		
		```js
		> console.count('abc');
		abc: 1
		undefined
		> console.countReset('abc');
		undefined
		> console.count('abc');
		abc: 1
		undefined
		>
		```
	**/
	@:overload(function(?label:String):Void { })
	function countReset(?label:String):Void;
	/**
		The **`console.debug()`** static method outputs a message to the console at the 'debug' log level.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/debug_static)
		
		The `console.debug()` function is an alias for
		{@link
		log
		}
		.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function debug(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.dir()`** static method displays a list of the properties of the specified JavaScript object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/dir_static)
		
		Uses [`util.inspect()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilinspectobject-options) on `obj` and prints the resulting string to `stdout`.
		This function bypasses any custom `inspect()` function defined on `obj`.
	**/
	@:overload(function(obj:Dynamic, ?options:node.util.InspectOptions):Void { })
	function dir(?item:Dynamic, ?options:Dynamic):Void;
	/**
		The **`console.dirxml()`** static method displays an interactive tree of the descendant elements of the specified XML/HTML element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/dirxml_static)
		
		This method calls `console.log()` passing it the arguments received.
		This method does not produce any XML formatting.
	**/
	@:overload(function(data:haxe.extern.Rest<Dynamic>):Void { })
	function dirxml(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.error()`** static method outputs a message to the console at the 'error' log level.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/error_static)
		
		Prints to `stderr` with newline. Multiple arguments can be passed, with the
		first used as the primary message and all additional used as substitution
		values similar to [`printf(3)`](http://man7.org/linux/man-pages/man3/printf.3.html)
		(the arguments are all passed to [`util.format()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilformatformat-args)).
		
		```js
		const code = 5;
		console.error('error #%d', code);
		// Prints: error #5, to stderr
		console.error('error', code);
		// Prints: error 5, to stderr
		```
		
		If formatting elements (e.g. `%d`) are not found in the first string then
		[`util.inspect()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilinspectobject-options) is called on each argument and the
		resulting string values are concatenated. See [`util.format()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilformatformat-args)
		for more information.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function error(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.group()`** static method creates a new inline group in the Web console log, causing any subsequent console messages to be indented by an additional level, until console/groupEnd_static is called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/group_static)
		
		Increases indentation of subsequent lines by spaces for `groupIndentation` length.
		
		If one or more `label`s are provided, those are printed first without the
		additional indentation.
	**/
	@:overload(function(label:haxe.extern.Rest<Dynamic>):Void { })
	function group(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.groupCollapsed()`** static method creates a new inline group in the console.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/groupCollapsed_static)
		
		An alias for
		{@link
		group
		}
		.
	**/
	@:overload(function(label:haxe.extern.Rest<Dynamic>):Void { })
	function groupCollapsed(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.groupEnd()`** static method exits the current inline group in the console.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/groupEnd_static)
		
		Decreases indentation of subsequent lines by spaces for `groupIndentation` length.
	**/
	@:overload(function():Void { })
	function groupEnd():Void;
	/**
		The **`console.info()`** static method outputs a message to the console at the 'info' log level.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/info_static)
		
		The `console.info()` function is an alias for
		{@link
		log
		}
		.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function info(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.log()`** static method outputs a message to the console.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/log_static)
		
		Prints to `stdout` with newline. Multiple arguments can be passed, with the
		first used as the primary message and all additional used as substitution
		values similar to [`printf(3)`](http://man7.org/linux/man-pages/man3/printf.3.html)
		(the arguments are all passed to [`util.format()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilformatformat-args)).
		
		```js
		const count = 5;
		console.log('count: %d', count);
		// Prints: count: 5, to stdout
		console.log('count:', count);
		// Prints: count: 5, to stdout
		```
		
		See [`util.format()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilformatformat-args) for more information.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function log(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.table()`** static method displays tabular data as a table.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/table_static)
		
		Try to construct a table with the columns of the properties of `tabularData` (or use `properties`) and rows of `tabularData` and log it. Falls back to just
		logging the argument if it can't be parsed as tabular.
		
		```js
		// These can't be parsed as tabular data
		console.table(Symbol());
		// Symbol()
		
		console.table(undefined);
		// undefined
		
		console.table([{ a: 1, b: 'Y' }, { a: 'Z', b: 2 }]);
		// ┌─────────┬─────┬─────┐
		// │ (index) │  a  │  b  │
		// ├─────────┼─────┼─────┤
		// │    0    │  1  │ 'Y' │
		// │    1    │ 'Z' │  2  │
		// └─────────┴─────┴─────┘
		
		console.table([{ a: 1, b: 'Y' }, { a: 'Z', b: 2 }], ['a']);
		// ┌─────────┬─────┐
		// │ (index) │  a  │
		// ├─────────┼─────┤
		// │    0    │  1  │
		// │    1    │ 'Z' │
		// └─────────┴─────┘
		```
	**/
	@:overload(function(tabularData:Dynamic, ?properties:haxe.ds.ReadOnlyArray<String>):Void { })
	function table(?tabularData:Dynamic, ?properties:Array<String>):Void;
	/**
		The **`console.time()`** static method starts a timer you can use to track how long an operation takes.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/time_static)
		
		Starts a timer that can be used to compute the duration of an operation. Timers
		are identified by a unique `label`. Use the same `label` when calling
		{@link
		timeEnd
		}
		to stop the timer and output the elapsed time in
		suitable time units to `stdout`. For example, if the elapsed
		time is 3869ms, `console.timeEnd()` displays "3.869s".
	**/
	@:overload(function(?label:String):Void { })
	function time(?label:String):Void;
	/**
		The **`console.timeEnd()`** static method stops a timer that was previously started by calling console/time_static.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/timeEnd_static)
		
		Stops a timer that was previously started by calling
		{@link
		time
		}
		and
		prints the result to `stdout`:
		
		```js
		console.time('bunch-of-stuff');
		// Do a bunch of stuff.
		console.timeEnd('bunch-of-stuff');
		// Prints: bunch-of-stuff: 225.438ms
		```
	**/
	@:overload(function(?label:String):Void { })
	function timeEnd(?label:String):Void;
	/**
		The **`console.timeLog()`** static method logs the current value of a timer that was previously started by calling console/time_static.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/timeLog_static)
		
		For a timer that was previously started by calling
		{@link
		time
		}
		, prints
		the elapsed time and other `data` arguments to `stdout`:
		
		```js
		console.time('process');
		const value = expensiveProcess1(); // Returns 42
		console.timeLog('process', value);
		// Prints "process: 365.227ms 42".
		doExpensiveProcess2(value);
		console.timeEnd('process');
		```
	**/
	@:overload(function(?label:String, data:haxe.extern.Rest<Dynamic>):Void { })
	function timeLog(?label:String, data:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method does not display anything unless used in the inspector. The `console.timeStamp()`
		method adds an event with the label `'label'` to the Timeline panel of the inspector.
	**/
	@:overload(function(?label:String):Void { })
	function timeStamp(?label:String):Void;
	/**
		The **`console.trace()`** static method outputs a stack trace to the console.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/trace_static)
		
		Prints to `stderr` the string `'Trace: '`, followed by the [`util.format()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilformatformat-args)
		formatted message and stack trace to the current position in the code.
		
		```js
		console.trace('Show me');
		// Prints: (stack trace will vary based on where trace is called)
		//  Trace: Show me
		//    at repl:2:9
		//    at REPLServer.defaultEval (repl.js:248:27)
		//    at bound (domain.js:287:14)
		//    at REPLServer.runBound [as eval] (domain.js:300:12)
		//    at REPLServer.<anonymous> (repl.js:412:12)
		//    at emitOne (events.js:82:20)
		//    at REPLServer.emit (events.js:169:7)
		//    at REPLServer.Interface._onLine (readline.js:210:10)
		//    at REPLServer.Interface._line (readline.js:549:8)
		//    at REPLServer.Interface._ttyWrite (readline.js:826:14)
		```
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function trace(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.warn()`** static method outputs a warning message to the console at the 'warning' log level.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/warn_static)
		
		The `console.warn()` function is an alias for
		{@link
		error
		}
		.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function warn(data:haxe.extern.Rest<Dynamic>):Void;
	var Console : global.console.ConsoleConstructor;
	/**
		This method does not display anything unless used in the inspector. The `console.profile()`
		method starts a JavaScript CPU profile with an optional label until
		{@link
		profileEnd
		}
		is called. The profile is then added to the Profile panel of the inspector.
		
		```js
		console.profile('MyLabel');
		// Some code
		console.profileEnd('MyLabel');
		// Adds the profile 'MyLabel' to the Profiles panel of the inspector.
		```
	**/
	function profile(?label:String):Void;
	/**
		This method does not display anything unless used in the inspector. Stops the current
		JavaScript CPU profiling session if one has been started and prints the report to the
		Profiles panel of the inspector. See
		{@link
		profile
		}
		for an example.
		
		If this method is called without a label, the most recently started profile is stopped.
	**/
	function profileEnd(?label:String):Void;
};