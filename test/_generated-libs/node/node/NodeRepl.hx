package node;

@:jsRequire("node:repl") @valueModuleOnly extern class NodeRepl {
	/**
		The `repl.start()` method creates and starts a
		{@link
		REPLServer
		}
		instance.
		
		If `options` is a string, then it specifies the input prompt:
		
		```js
		import repl from 'node:repl';
		
		// a Unix style prompt
		repl.start('$ ');
		```
	**/
	static function start(?options:ts.AnyOf2<String, node.repl.ReplOptions>):node.repl.REPLServer;
	/**
		This is the default "writer" value, if none is passed in the REPL options,
		and it can be overridden by custom print functions.
	**/
	static final writer : {
		@:selfCall
		function call(obj:Dynamic):String;
		var options : node.util.InspectOptions;
	};
	/**
		A flag passed in the REPL options. Evaluates expressions in sloppy mode.
	**/
	static final REPL_MODE_SLOPPY : js.lib.Symbol;
	/**
		A flag passed in the REPL options. Evaluates expressions in strict mode.
		This is equivalent to prefacing every repl statement with `'use strict'`.
	**/
	static final REPL_MODE_STRICT : js.lib.Symbol;
}