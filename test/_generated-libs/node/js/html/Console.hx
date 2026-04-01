package js.html;

/**
	The **`console`** object provides access to the debugging console (e.g., the Web console in Firefox).
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/console)
**/
typedef Console = {
	/**
		The **`console.assert()`** static method writes an error message to the console if the assertion is false.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/assert_static)
		
		A simple assertion test that verifies whether `value` is truthy.
		If it is not, an `AssertionError` is thrown.
		If provided, the error `message` is formatted using `util.format()` and used as the error message.
	**/
	@:overload(function(value:Dynamic, ?message:String, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function assert(?condition:Bool, data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.clear()`** static method clears the console if possible.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/clear_static)
		
		When `stdout` is a TTY, calling `console.clear()` will attempt to clear the TTY.
		When `stdout` is not a TTY, this method does nothing.
	**/
	@:overload(function():Void { })
	function clear():Void;
	/**
		The **`console.count()`** static method logs the number of times that this particular call to `count()` has been called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/count_static)
		
		Maintains an internal counter specific to `label` and outputs to `stdout` the number of times `console.count()` has been called with the given `label`.
	**/
	@:overload(function(?label:String):Void { })
	function count(?label:String):Void;
	/**
		The **`console.countReset()`** static method resets counter used with console/count_static.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/countReset_static)
		
		Resets the internal counter specific to `label`.
	**/
	@:overload(function(?label:String):Void { })
	function countReset(?label:String):Void;
	/**
		The **`console.debug()`** static method outputs a message to the console at the 'debug' log level.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/debug_static)
		
		The `console.debug()` function is an alias for
		{@link
		console.log()
		}
		.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function debug(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.dir()`** static method displays a list of the properties of the specified JavaScript object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/dir_static)
		
		Uses
		{@link
		util.inspect()
		}
		on `obj` and prints the resulting string to `stdout`.
		This function bypasses any custom `inspect()` function defined on `obj`.
	**/
	@:overload(function(obj:Dynamic, ?options:global.nodejs.InspectOptions):Void { })
	function dir(?item:Dynamic, ?options:Dynamic):Void;
	/**
		The **`console.dirxml()`** static method displays an interactive tree of the descendant elements of the specified XML/HTML element.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/dirxml_static)
		
		This method calls
		{@link
		console.log()
		}
		passing it the arguments received. Please note that this method does not produce any XML formatting
	**/
	@:overload(function(data:haxe.extern.Rest<Dynamic>):Void { })
	function dirxml(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.error()`** static method outputs a message to the console at the 'error' log level.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/error_static)
		
		Prints to `stderr` with newline.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function error(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.group()`** static method creates a new inline group in the Web console log, causing any subsequent console messages to be indented by an additional level, until console/groupEnd_static is called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/group_static)
		
		Increases indentation of subsequent lines by two spaces.
		If one or more `label`s are provided, those are printed first without the additional indentation.
	**/
	@:overload(function(label:haxe.extern.Rest<Dynamic>):Void { })
	function group(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.groupCollapsed()`** static method creates a new inline group in the console.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/groupCollapsed_static)
		
		The `console.groupCollapsed()` function is an alias for
		{@link
		console.group()
		}
		.
	**/
	@:overload(function():Void { })
	function groupCollapsed(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.groupEnd()`** static method exits the current inline group in the console.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/groupEnd_static)
		
		Decreases indentation of subsequent lines by two spaces.
	**/
	@:overload(function():Void { })
	function groupEnd():Void;
	/**
		The **`console.info()`** static method outputs a message to the console at the 'info' log level.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/info_static)
		
		The
		{@link
		console.info()
		}
		function is an alias for
		{@link
		console.log()
		}
		.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function info(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.log()`** static method outputs a message to the console.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/log_static)
		
		Prints to `stdout` with newline.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function log(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.table()`** static method displays tabular data as a table.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/table_static)
		
		This method does not display anything unless used in the inspector.
		 Prints to `stdout` the array `array` formatted as a table.
	**/
	@:overload(function(tabularData:Dynamic, ?properties:Array<String>):Void { })
	function table(?tabularData:Dynamic, ?properties:Array<String>):Void;
	/**
		The **`console.time()`** static method starts a timer you can use to track how long an operation takes.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/time_static)
		
		Starts a timer that can be used to compute the duration of an operation. Timers are identified by a unique `label`.
	**/
	@:overload(function(?label:String):Void { })
	function time(?label:String):Void;
	/**
		The **`console.timeEnd()`** static method stops a timer that was previously started by calling console/time_static.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/timeEnd_static)
		
		Stops a timer that was previously started by calling
		{@link
		console.time()
		}
		and prints the result to `stdout`.
	**/
	@:overload(function(?label:String):Void { })
	function timeEnd(?label:String):Void;
	/**
		The **`console.timeLog()`** static method logs the current value of a timer that was previously started by calling console/time_static.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/timeLog_static)
		
		For a timer that was previously started by calling
		{@link
		console.time()
		}
		, prints the elapsed time and other `data` arguments to `stdout`.
	**/
	@:overload(function(?label:String, data:haxe.extern.Rest<Dynamic>):Void { })
	function timeLog(?label:String, data:haxe.extern.Rest<Dynamic>):Void;
	/**
		This method does not display anything unless used in the inspector.
		 Adds an event with the label `label` to the Timeline panel of the inspector.
	**/
	@:overload(function(?label:String):Void { })
	function timeStamp(?label:String):Void;
	/**
		The **`console.trace()`** static method outputs a stack trace to the console.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/trace_static)
		
		Prints to `stderr` the string 'Trace :', followed by the
		{@link
		util.format()
		}
		formatted message and stack trace to the current position in the code.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function trace(data:haxe.extern.Rest<Dynamic>):Void;
	/**
		The **`console.warn()`** static method outputs a warning message to the console at the 'warning' log level.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/console/warn_static)
		
		The
		{@link
		console.warn()
		}
		function is an alias for
		{@link
		console.error()
		}
		.
	**/
	@:overload(function(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void { })
	function warn(data:haxe.extern.Rest<Dynamic>):Void;
	var Console : global.nodejs.ConsoleConstructor;
	/**
		This method does not display anything unless used in the inspector.
		 The console.markTimeline() method is the deprecated form of console.timeStamp().
	**/
	function markTimeline(?label:String):Void;
	/**
		This method does not display anything unless used in the inspector.
		 Starts a JavaScript CPU profile with an optional label.
	**/
	function profile(?label:String):Void;
	/**
		This method does not display anything unless used in the inspector.
		 Stops the current JavaScript CPU profiling session if one has been started and prints the report to the Profiles panel of the inspector.
	**/
	function profileEnd(?label:String):Void;
	/**
		This method does not display anything unless used in the inspector.
		 The console.timeline() method is the deprecated form of console.time().
	**/
	function timeline(?label:String):Void;
	/**
		This method does not display anything unless used in the inspector.
		 The console.timelineEnd() method is the deprecated form of console.timeEnd().
	**/
	function timelineEnd(?label:String):Void;
};