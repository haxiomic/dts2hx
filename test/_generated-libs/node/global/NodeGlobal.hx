package global;

@:native("") extern class NodeGlobal {
	static var global : {
		/**
			Evaluates JavaScript code and executes it.
		**/
		function eval(x:String):Dynamic;
		/**
			Converts a string to an integer.
		**/
		function parseInt(string:String, ?radix:Float):Float;
		/**
			Converts a string to a floating-point number.
		**/
		function parseFloat(string:String):Float;
		/**
			Returns a Boolean value that indicates whether a value is the reserved value NaN (not a number).
		**/
		function isNaN(number:Float):Bool;
		/**
			Determines whether a supplied number is finite.
		**/
		function isFinite(number:Float):Bool;
		/**
			Gets the unencoded version of an encoded Uniform Resource Identifier (URI).
		**/
		function decodeURI(encodedURI:String):String;
		/**
			Gets the unencoded version of an encoded component of a Uniform Resource Identifier (URI).
		**/
		function decodeURIComponent(encodedURIComponent:String):String;
		/**
			Encodes a text string as a valid Uniform Resource Identifier (URI)
		**/
		function encodeURI(uri:String):String;
		/**
			Encodes a text string as a valid component of a Uniform Resource Identifier (URI).
		**/
		function encodeURIComponent(uriComponent:ts.AnyOf3<String, Float, Bool>):String;
		/**
			Computes a new string in which certain characters have been replaced by a hexadecimal escape sequence.
		**/
		function escape(string:String):String;
		/**
			Computes a new string in which hexadecimal escape sequences are replaced with the character that it represents.
		**/
		function unescape(string:String):String;
		var NaN : Float;
		var Infinity : Float;
		var Symbol : js.lib.SymbolConstructor;
		/**
			Provides functionality common to all JavaScript objects.
		**/
		var Object : js.lib.ObjectConstructor;
		/**
			Creates a new function.
		**/
		var Function : js.lib.FunctionConstructor;
		/**
			Allows manipulation and formatting of text strings and determination and location of substrings within strings.
		**/
		var String : js.lib.StringConstructor;
		var Boolean : js.lib.BooleanConstructor;
		/**
			An object that represents a number of any kind. All JavaScript numbers are 64-bit floating-point numbers.
		**/
		var Number : js.lib.NumberConstructor;
		/**
			An intrinsic object that provides basic mathematics functionality and constants.
		**/
		var Math : js.lib.Math;
		/**
			Enables basic storage and retrieval of dates and times.
		**/
		var Date : js.lib.DateConstructor;
		var RegExp : js.lib.RegExpConstructor;
		var Error : js.lib.ErrorConstructor;
		var EvalError : js.lib.EvalErrorConstructor;
		var RangeError : js.lib.RangeErrorConstructor;
		var ReferenceError : js.lib.ReferenceErrorConstructor;
		var SyntaxError : js.lib.SyntaxErrorConstructor;
		var TypeError : js.lib.TypeErrorConstructor;
		var URIError : js.lib.URIErrorConstructor;
		/**
			An intrinsic object that provides functions to convert JavaScript values to and from the JavaScript Object Notation (JSON) format.
		**/
		var JSON : js.lib.JSON;
		var Array : js.lib.ArrayConstructor;
		/**
			Represents the completion of an asynchronous operation
		**/
		var Promise : js.lib.PromiseConstructor;
		/**
			Represents a raw buffer of binary data, which is used to store data for the
			different typed arrays. ArrayBuffers cannot be read from or written to directly,
			but can be passed to a typed array or DataView Object to interpret the raw
			buffer as needed.
		**/
		var ArrayBuffer : js.lib.ArrayBufferConstructor;
		var DataView : js.lib.DataViewConstructor;
		/**
			A typed array of 8-bit integer values. The contents are initialized to 0. If the requested
			number of bytes could not be allocated an exception is raised.
		**/
		var Int8Array : js.lib.Int8ArrayConstructor;
		/**
			A typed array of 8-bit unsigned integer values. The contents are initialized to 0. If the
			requested number of bytes could not be allocated an exception is raised.
		**/
		var Uint8Array : js.lib.Uint8ArrayConstructor;
		/**
			A typed array of 8-bit unsigned integer (clamped) values. The contents are initialized to 0.
			If the requested number of bytes could not be allocated an exception is raised.
		**/
		var Uint8ClampedArray : js.lib.Uint8ClampedArrayConstructor;
		/**
			A typed array of 16-bit signed integer values. The contents are initialized to 0. If the
			requested number of bytes could not be allocated an exception is raised.
		**/
		var Int16Array : js.lib.Int16ArrayConstructor;
		/**
			A typed array of 16-bit unsigned integer values. The contents are initialized to 0. If the
			requested number of bytes could not be allocated an exception is raised.
		**/
		var Uint16Array : js.lib.Uint16ArrayConstructor;
		/**
			A typed array of 32-bit signed integer values. The contents are initialized to 0. If the
			requested number of bytes could not be allocated an exception is raised.
		**/
		var Int32Array : js.lib.Int32ArrayConstructor;
		/**
			A typed array of 32-bit unsigned integer values. The contents are initialized to 0. If the
			requested number of bytes could not be allocated an exception is raised.
		**/
		var Uint32Array : js.lib.Uint32ArrayConstructor;
		/**
			A typed array of 32-bit float values. The contents are initialized to 0. If the requested number
			of bytes could not be allocated an exception is raised.
		**/
		var Float32Array : js.lib.Float32ArrayConstructor;
		/**
			A typed array of 64-bit float values. The contents are initialized to 0. If the requested
			number of bytes could not be allocated an exception is raised.
		**/
		var Float64Array : js.lib.Float64ArrayConstructor;
		/**
			`window.alert()` instructs the browser to display a dialog with an optional message, and to wait until the user dismisses the dialog.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/alert)
		**/
		function alert(?message:Dynamic):Void;
		/**
			The **`Window.blur()`** method does nothing.
		**/
		function blur():Void;
		/**
			The **`window.cancelIdleCallback()`** method cancels a callback previously scheduled with window.requestIdleCallback().
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/cancelIdleCallback)
		**/
		function cancelIdleCallback(handle:Float):Void;
		/**
			The **`Window.captureEvents()`** method does nothing.
		**/
		function captureEvents():Void;
		/**
			The **`Window.close()`** method closes the current window, or the window on which it was called.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/close)
		**/
		function close():Void;
		/**
			`window.confirm()` instructs the browser to display a dialog with an optional message, and to wait until the user either confirms or cancels the dialog.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/confirm)
		**/
		function confirm(?message:String):Bool;
		/**
			Makes a request to bring the window to the front.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/focus)
		**/
		function focus():Void;
		/**
			The **`Window.getComputedStyle()`** method returns an object containing the values of all CSS properties of an element, after applying active stylesheets and resolving any basic computation those values may contain.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/getComputedStyle)
		**/
		function getComputedStyle(elt:js.html.DOMElement, ?pseudoElt:String):js.html.CSSStyleDeclaration;
		/**
			The **`getSelection()`** method of the Window interface returns the Selection object associated with the window's document, representing the range of text selected by the user or the current position of the caret.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/getSelection)
		**/
		function getSelection():Null<js.html.Selection>;
		/**
			The Window interface's **`matchMedia()`** method returns a new MediaQueryList object that can then be used to determine if the document matches the media query string, as well as to monitor the document to detect when it matches (or stops matching) that media query.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/matchMedia)
		**/
		function matchMedia(query:String):js.html.MediaQueryList;
		/**
			The **`moveBy()`** method of the Window interface moves the current window by a specified amount.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/moveBy)
		**/
		function moveBy(x:Float, y:Float):Void;
		/**
			The **`moveTo()`** method of the Window interface moves the current window to the specified coordinates.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/moveTo)
		**/
		function moveTo(x:Float, y:Float):Void;
		/**
			The **`open()`** method of the `Window` interface loads a specified resource into a new or existing browsing context (that is, a tab, a window, or an iframe) under a specified name.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/open)
		**/
		function open(?url:ts.AnyOf2<String, js.html.URL>, ?target:String, ?features:String):Null<js.html.Window>;
		/**
			The **`window.postMessage()`** method safely enables cross-origin communication between Window objects; _e.g.,_ between a page and a pop-up that it spawned, or between a page and an iframe embedded within it.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/postMessage)
		**/
		@:overload(function(message:Dynamic, ?options:js.html.WindowPostMessageOptions):Void { })
		function postMessage(message:Dynamic, targetOrigin:String, ?transfer:Array<js.html.Transferable>):Void;
		/**
			Opens the print dialog to print the current document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/print)
		**/
		function print():Void;
		/**
			`window.prompt()` instructs the browser to display a dialog with an optional message prompting the user to input some text, and to wait until the user either submits the text or cancels the dialog.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/prompt)
		**/
		function prompt(?message:String, ?_default:String):Null<String>;
		/**
			Releases the window from trapping events of a specific type.
		**/
		function releaseEvents():Void;
		/**
			The **`window.requestIdleCallback()`** method queues a function to be called during a browser's idle periods.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/requestIdleCallback)
		**/
		function requestIdleCallback(callback:js.html.IdleRequestCallback, ?options:js.html.IdleRequestOptions):Float;
		/**
			The **`Window.resizeBy()`** method resizes the current window by a specified amount.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/resizeBy)
		**/
		function resizeBy(x:Float, y:Float):Void;
		/**
			The **`Window.resizeTo()`** method dynamically resizes the window.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/resizeTo)
		**/
		function resizeTo(width:Float, height:Float):Void;
		/**
			The **`Window.scroll()`** method scrolls the window to a particular place in the document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scroll)
		**/
		@:overload(function(x:Float, y:Float):Void { })
		function scroll(?options:js.html.ScrollToOptions):Void;
		/**
			The **`Window.scrollBy()`** method scrolls the document in the window by the given amount.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollBy)
		**/
		@:overload(function(x:Float, y:Float):Void { })
		function scrollBy(?options:js.html.ScrollToOptions):Void;
		/**
			**`Window.scrollTo()`** scrolls to a particular set of coordinates in the document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollTo)
		**/
		@:overload(function(x:Float, y:Float):Void { })
		function scrollTo(?options:js.html.ScrollToOptions):Void;
		/**
			The **`window.stop()`** stops further resource loading in the current browsing context, equivalent to the stop button in the browser.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/stop)
		**/
		function stop():Void;
		function toString():String;
		/**
			The **`dispatchEvent()`** method of the EventTarget sends an Event to the object, (synchronously) invoking the affected event listeners in the appropriate order.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget/dispatchEvent)
		**/
		function dispatchEvent(event:js.html.Event):Bool;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/cancelAnimationFrame)
		**/
		function cancelAnimationFrame(handle:Float):Void;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DedicatedWorkerGlobalScope/requestAnimationFrame)
		**/
		function requestAnimationFrame(callback:js.html.FrameRequestCallback):Float;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/atob)
			
			Decodes a string of Base64-encoded data into bytes, and encodes those bytes
			into a string using Latin-1 (ISO-8859-1).
			
			The `data` may be any JavaScript-value that can be coerced into a string.
			
			**This function is only provided for compatibility with legacy web platform APIs**
			**and should never be used in new code, because they use strings to represent**
			**binary data and predate the introduction of typed arrays in JavaScript.**
			**For code running using Node.js APIs, converting between base64-encoded strings**
			**and binary data should be performed using `Buffer.from(str, 'base64')` and `buf.toString('base64')`.**
		**/
		@:overload(function(data:String):String { })
		function atob(data:String):String;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/btoa)
			
			Decodes a string into bytes using Latin-1 (ISO-8859), and encodes those bytes
			into a string using Base64.
			
			The `data` may be any JavaScript-value that can be coerced into a string.
			
			**This function is only provided for compatibility with legacy web platform APIs**
			**and should never be used in new code, because they use strings to represent**
			**binary data and predate the introduction of typed arrays in JavaScript.**
			**For code running using Node.js APIs, converting between base64-encoded strings**
			**and binary data should be performed using `Buffer.from(str, 'base64')` and `buf.toString('base64')`.**
		**/
		@:overload(function(data:String):String { })
		function btoa(data:String):String;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/clearInterval)
			
			Cancels a `Timeout` object created by `setInterval()`.
		**/
		@:overload(function(timeout:Null<ts.AnyOf3<String, Float, global.nodejs.Timeout>>):Void { })
		function clearInterval(id:Null<Float>):Void;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/clearTimeout)
			
			Cancels a `Timeout` object created by `setTimeout()`.
		**/
		@:overload(function(timeout:Null<ts.AnyOf3<String, Float, global.nodejs.Timeout>>):Void { })
		function clearTimeout(id:Null<Float>):Void;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/createImageBitmap)
		**/
		@:overload(function(image:js.html.ImageBitmapSource, sx:Float, sy:Float, sw:Float, sh:Float, ?options:js.html.ImageBitmapOptions):js.lib.Promise<js.html.ImageBitmap> { })
		function createImageBitmap(image:js.html.ImageBitmapSource, ?options:js.html.ImageBitmapOptions):js.lib.Promise<js.html.ImageBitmap>;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/fetch)
		**/
		@:overload(function(input:ts.AnyOf3<String, js.html.Request, js.html.URL>, ?init:js.html.RequestInit):js.lib.Promise<js.html.Response> { })
		function fetch(input:ts.AnyOf3<String, js.html.Request, js.html.URL>, ?init:js.html.RequestInit):js.lib.Promise<js.html.Response>;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/queueMicrotask)
			
			The `queueMicrotask()` method queues a microtask to invoke `callback`. If
			`callback` throws an exception, the `process` object `'uncaughtException'`
			event will be emitted.
			
			The microtask queue is managed by V8 and may be used in a similar manner to
			the `process.nextTick()` queue, which is managed by Node.js. The
			`process.nextTick()` queue is always processed before the microtask queue
			within each turn of the Node.js event loop.
		**/
		@:overload(function(callback:() -> Void):Void { })
		function queueMicrotask(callback:js.html.VoidFunction):Void;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/reportError)
		**/
		function reportError(e:Dynamic):Void;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setInterval)
			
			Schedules repeated execution of `callback` every `delay` milliseconds.
			
			When `delay` is larger than `2147483647` or less than `1`, the `delay` will be
			set to `1`. Non-integer delays are truncated to an integer.
			
			If `callback` is not a function, a `TypeError` will be thrown.
			
			This method has a custom variant for promises that is available using
			`timersPromises.setInterval()`.
		**/
		@:overload(function<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?delay:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout { })
		@:overload(function(callback:(_:ts.Undefined) -> Void, ?delay:Float):global.nodejs.Timeout { })
		function setInterval(handler:js.html.TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/setTimeout)
			
			Schedules execution of a one-time `callback` after `delay` milliseconds.
			
			The `callback` will likely not be invoked in precisely `delay` milliseconds.
			Node.js makes no guarantees about the exact timing of when callbacks will fire,
			nor of their ordering. The callback will be called as close as possible to the
			time specified.
			
			When `delay` is larger than `2147483647` or less than `1` or `NaN`, the `delay`
			will be set to `1`. Non-integer delays are truncated to an integer.
			
			If `callback` is not a function, a `TypeError` will be thrown.
			
			This method has a custom variant for promises that is available using
			`timersPromises.setTimeout()`.
		**/
		@:overload(function<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, ?delay:Float, args:haxe.extern.Rest<Any>):global.nodejs.Timeout { })
		@:overload(function(callback:(_:ts.Undefined) -> Void, ?delay:Float):global.nodejs.Timeout { })
		function setTimeout(handler:js.html.TimerHandler, ?timeout:Float, arguments:haxe.extern.Rest<Dynamic>):Float;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/structuredClone)
		**/
		@:overload(function<T>(value:T, ?options:{ @:optional var transfer : Array<node.worker_threads.Transferable>; }):T { })
		function structuredClone<T>(value:T, ?options:js.html.StructuredSerializeOptions):T;
		@:overload(function(type:String, listener:js.html.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void { })
		function addEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.AddEventListenerOptions>):Void;
		@:overload(function(type:String, listener:js.html.EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void { })
		function removeEventListener<K:(String)>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, js.html.EventListenerOptions>):Void;
		var NodeFilter : {
			final FILTER_ACCEPT : Int;
			final FILTER_REJECT : Int;
			final FILTER_SKIP : Int;
			final SHOW_ALL : Float;
			final SHOW_ELEMENT : Int;
			final SHOW_ATTRIBUTE : Int;
			final SHOW_TEXT : Int;
			final SHOW_CDATA_SECTION : Int;
			final SHOW_ENTITY_REFERENCE : Int;
			final SHOW_ENTITY : Int;
			final SHOW_PROCESSING_INSTRUCTION : Int;
			final SHOW_COMMENT : Int;
			final SHOW_DOCUMENT : Int;
			final SHOW_DOCUMENT_TYPE : Int;
			final SHOW_DOCUMENT_FRAGMENT : Int;
			final SHOW_NOTATION : Int;
		};
		/**
			The **`AbortController`** interface represents a controller object that allows you to abort one or more Web requests as and when desired.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortController)
		**/
		var AbortController : {
			var prototype : js.html.AbortController;
		};
		/**
			The **`AbortSignal`** interface represents a signal object that allows you to communicate with an asynchronous operation (such as a fetch request) and abort it if required via an AbortController object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal)
		**/
		var AbortSignal : {
			var prototype : js.html.AbortSignal;
			/**
				The **`AbortSignal.abort()`** static method returns an AbortSignal that is already set as aborted (and which does not trigger an AbortSignal/abort_event event).
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal/abort_static)
			**/
			function abort(?reason:Dynamic):js.html.AbortSignal;
			/**
				The **`AbortSignal.any()`** static method takes an iterable of abort signals and returns an AbortSignal.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal/any_static)
			**/
			function any(signals:Array<js.html.AbortSignal>):js.html.AbortSignal;
			/**
				The **`AbortSignal.timeout()`** static method returns an AbortSignal that will automatically abort after a specified time.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortSignal/timeout_static)
			**/
			function timeout(milliseconds:Float):js.html.AbortSignal;
		};
		/**
			The **`AbstractRange`** abstract interface is the base class upon which all DOM range types are defined.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbstractRange)
		**/
		var AbstractRange : {
			var prototype : js.html.AbstractRange;
		};
		/**
			The **`AnalyserNode`** interface represents a node able to provide real-time frequency and time-domain analysis information.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AnalyserNode)
		**/
		var AnalyserNode : {
			var prototype : js.html.audio.AnalyserNode;
		};
		/**
			The **`Animation`** interface of the Web Animations API represents a single animation player and provides playback controls and a timeline for an animation node or source.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Animation)
		**/
		var Animation : {
			var prototype : js.html.Animation;
		};
		/**
			The `AnimationEffect` interface of the Web Animations API is an interface representing animation effects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AnimationEffect)
		**/
		var AnimationEffect : {
			var prototype : js.html.AnimationEffect;
		};
		/**
			The **`AnimationEvent`** interface represents events providing information related to animations.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AnimationEvent)
		**/
		var AnimationEvent : {
			var prototype : js.html.AnimationEvent;
		};
		/**
			The AnimationPlaybackEvent interface of the Web Animations API represents animation events.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AnimationPlaybackEvent)
		**/
		var AnimationPlaybackEvent : {
			var prototype : js.html.AnimationPlaybackEvent;
		};
		/**
			The `AnimationTimeline` interface of the Web Animations API represents the timeline of an animation.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AnimationTimeline)
		**/
		var AnimationTimeline : {
			var prototype : js.html.AnimationTimeline;
		};
		/**
			The **`Attr`** interface represents one of an element's attributes as an object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Attr)
		**/
		var Attr : {
			var prototype : js.html.Attr;
		};
		/**
			The **`AudioBuffer`** interface represents a short audio asset residing in memory, created from an audio file using the BaseAudioContext/decodeAudioData method, or from raw data using BaseAudioContext/createBuffer.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioBuffer)
		**/
		var AudioBuffer : {
			var prototype : js.html.audio.AudioBuffer;
		};
		/**
			The **`AudioBufferSourceNode`** interface is an AudioScheduledSourceNode which represents an audio source consisting of in-memory audio data, stored in an AudioBuffer.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioBufferSourceNode)
		**/
		var AudioBufferSourceNode : {
			var prototype : js.html.audio.AudioBufferSourceNode;
		};
		/**
			The `AudioContext` interface represents an audio-processing graph built from audio modules linked together, each represented by an AudioNode.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioContext)
		**/
		var AudioContext : {
			var prototype : js.html.audio.AudioContext;
		};
		/**
			The **`AudioData`** interface of the WebCodecs API represents an audio sample.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioData)
		**/
		var AudioData : {
			var prototype : js.html.AudioData;
		};
		/**
			The **`AudioDecoder`** interface of the WebCodecs API decodes chunks of audio.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder)
		**/
		var AudioDecoder : {
			var prototype : js.html.AudioDecoder;
			/**
				The **`isConfigSupported()`** static method of the AudioDecoder interface checks if the given config is supported (that is, if AudioDecoder objects can be successfully configured with the given config).
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDecoder/isConfigSupported_static)
			**/
			function isConfigSupported(config:js.html.AudioDecoderConfig):js.lib.Promise<js.html.AudioDecoderSupport>;
		};
		/**
			The `AudioDestinationNode` interface represents the end destination of an audio graph in a given context — usually the speakers of your device.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioDestinationNode)
		**/
		var AudioDestinationNode : {
			var prototype : js.html.audio.AudioDestinationNode;
		};
		/**
			The **`AudioEncoder`** interface of the WebCodecs API encodes AudioData objects.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder)
		**/
		var AudioEncoder : {
			var prototype : js.html.AudioEncoder;
			/**
				The **`isConfigSupported()`** static method of the AudioEncoder interface checks if the given config is supported (that is, if AudioEncoder objects can be successfully configured with the given config).
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioEncoder/isConfigSupported_static)
			**/
			function isConfigSupported(config:js.html.AudioEncoderConfig):js.lib.Promise<js.html.AudioEncoderSupport>;
		};
		/**
			The `AudioListener` interface represents the position and orientation of the unique person listening to the audio scene, and is used in audio spatialization.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioListener)
		**/
		var AudioListener : {
			var prototype : js.html.audio.AudioListener;
		};
		/**
			The **`AudioNode`** interface is a generic interface for representing an audio processing module.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioNode)
		**/
		var AudioNode : {
			var prototype : js.html.audio.AudioNode;
		};
		/**
			The Web Audio API's `AudioParam` interface represents an audio-related parameter, usually a parameter of an AudioNode (such as GainNode.gain).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioParam)
		**/
		var AudioParam : {
			var prototype : js.html.audio.AudioParam;
		};
		/**
			The **`AudioParamMap`** interface of the Web Audio API represents an iterable and read-only set of multiple audio parameters.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioParamMap)
		**/
		var AudioParamMap : {
			var prototype : js.html.AudioParamMap;
		};
		/**
			The `AudioProcessingEvent` interface of the Web Audio API represents events that occur when a ScriptProcessorNode input buffer is ready to be processed.
		**/
		var AudioProcessingEvent : {
			var prototype : js.html.audio.AudioProcessingEvent;
		};
		/**
			The `AudioScheduledSourceNode` interface—part of the Web Audio API—is a parent interface for several types of audio source node interfaces which share the ability to be started and stopped, optionally at specified times.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioScheduledSourceNode)
		**/
		var AudioScheduledSourceNode : {
			var prototype : js.html.audio.AudioScheduledSourceNode;
		};
		/**
			The **`AudioWorklet`** interface of the Web Audio API is used to supply custom audio processing scripts that execute in a separate thread to provide very low latency audio processing.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioWorklet)
		**/
		var AudioWorklet : {
			var prototype : js.html.AudioWorklet;
		};
		/**
			The **`AudioWorkletNode`** interface of the Web Audio API represents a base class for a user-defined AudioNode, which can be connected to an audio routing graph along with other nodes.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AudioWorkletNode)
		**/
		var AudioWorkletNode : {
			var prototype : js.html.AudioWorkletNode;
		};
		/**
			The **`AuthenticatorAssertionResponse`** interface of the Web Authentication API contains a digital signature from the private key of a particular WebAuthn credential.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAssertionResponse)
		**/
		var AuthenticatorAssertionResponse : {
			var prototype : js.html.AuthenticatorAssertionResponse;
		};
		/**
			The **`AuthenticatorAttestationResponse`** interface of the Web Authentication API is the result of a WebAuthn credential registration.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorAttestationResponse)
		**/
		var AuthenticatorAttestationResponse : {
			var prototype : js.html.AuthenticatorAttestationResponse;
		};
		/**
			The **`AuthenticatorResponse`** interface of the Web Authentication API is the base interface for interfaces that provide a cryptographic root of trust for a key pair.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/AuthenticatorResponse)
		**/
		var AuthenticatorResponse : {
			var prototype : js.html.AuthenticatorResponse;
		};
		/**
			The **`BarProp`** interface of the Document Object Model represents the web browser user interface elements that are exposed to scripts in web pages.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/BarProp)
		**/
		var BarProp : {
			var prototype : js.html.BarProp;
		};
		/**
			The `BaseAudioContext` interface of the Web Audio API acts as a base definition for online and offline audio-processing graphs, as represented by AudioContext and OfflineAudioContext respectively.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/BaseAudioContext)
		**/
		var BaseAudioContext : {
			var prototype : js.html.audio.BaseAudioContext;
		};
		/**
			The **`BeforeUnloadEvent`** interface represents the event object for the Window/beforeunload_event event, which is fired when the current window, contained document, and associated resources are about to be unloaded.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/BeforeUnloadEvent)
		**/
		var BeforeUnloadEvent : {
			var prototype : js.html.BeforeUnloadEvent;
		};
		/**
			The `BiquadFilterNode` interface represents a simple low-order filter, and is created using the BaseAudioContext/createBiquadFilter method.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/BiquadFilterNode)
		**/
		var BiquadFilterNode : {
			var prototype : js.html.audio.BiquadFilterNode;
		};
		/**
			The **`Blob`** interface represents a blob, which is a file-like object of immutable, raw data; they can be read as text or binary data, or converted into a ReadableStream so its methods can be used for processing the data.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Blob)
			
			`Blob` class is a global reference for `import { Blob } from 'node:node:buffer'`
			https://nodejs.org/api/buffer.html#class-blob
		**/
		var Blob : {
			var prototype : js.html.Blob;
		};
		/**
			The **`BlobEvent`** interface of the MediaStream Recording API represents events associated with a Blob.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/BlobEvent)
		**/
		var BlobEvent : {
			var prototype : js.html.BlobEvent;
		};
		/**
			The **`BroadcastChannel`** interface represents a named channel that any browsing context of a given origin can subscribe to.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/BroadcastChannel)
			
			`BroadcastChannel` class is a global reference for `import { BroadcastChannel } from 'node:worker_threads'`
			https://nodejs.org/api/globals.html#broadcastchannel
		**/
		var BroadcastChannel : {
			var prototype : js.html.BroadcastChannel;
		};
		/**
			The **`ByteLengthQueuingStrategy`** interface of the Streams API provides a built-in byte length queuing strategy that can be used when constructing streams.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ByteLengthQueuingStrategy)
		**/
		var ByteLengthQueuingStrategy : {
			var prototype : js.html.ByteLengthQueuingStrategy;
		};
		/**
			The **`CDATASection`** interface represents a CDATA section that can be used within XML to include extended portions of unescaped text.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CDATASection)
		**/
		var CDATASection : {
			var prototype : js.html.CDATASection;
		};
		/**
			The `CSPViolationReportBody` interface is an extension of the Reporting API that represents the body of a Content Security Policy (CSP) violation report.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSPViolationReportBody)
		**/
		var CSPViolationReportBody : {
			var prototype : js.html.CSPViolationReportBody;
		};
		/**
			The **`CSSAnimation`** interface of the Web Animations API represents an Animation object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSAnimation)
		**/
		var CSSAnimation : {
			var prototype : js.html.CSSAnimation;
		};
		/**
			An object implementing the **`CSSConditionRule`** interface represents a single condition CSS at-rule, which consists of a condition and a statement block.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSConditionRule)
		**/
		var CSSConditionRule : {
			var prototype : js.html.CSSConditionRule;
		};
		/**
			The **`CSSContainerRule`** interface represents a single CSS
		**/
		var CSSContainerRule : {
			var prototype : js.html.CSSContainerRule;
		};
		/**
			The **`CSSCounterStyleRule`** interface represents an
		**/
		var CSSCounterStyleRule : {
			var prototype : js.html.CSSCounterStyleRule;
		};
		/**
			The **`CSSFontFaceRule`** interface represents an
		**/
		var CSSFontFaceRule : {
			var prototype : js.html.CSSFontFaceRule;
		};
		/**
			The **`CSSFontFeatureValuesRule`** interface represents an
		**/
		var CSSFontFeatureValuesRule : {
			var prototype : js.html.CSSFontFeatureValuesRule;
		};
		/**
			The **`CSSFontPaletteValuesRule`** interface represents an
		**/
		var CSSFontPaletteValuesRule : {
			var prototype : js.html.CSSFontPaletteValuesRule;
		};
		/**
			The **`CSSGroupingRule`** interface of the CSS Object Model represents any CSS at-rule that contains other rules nested within it.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSGroupingRule)
		**/
		var CSSGroupingRule : {
			var prototype : js.html.CSSGroupingRule;
		};
		/**
			The **`CSSImageValue`** interface of the CSS Typed Object Model API represents values for properties that take an image, for example background-image, list-style-image, or border-image-source.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSImageValue)
		**/
		var CSSImageValue : {
			var prototype : js.html.CSSImageValue;
		};
		/**
			The **`CSSImportRule`** interface represents an
		**/
		var CSSImportRule : {
			var prototype : js.html.CSSImportRule;
		};
		/**
			The **`CSSKeyframeRule`** interface describes an object representing a set of styles for a given keyframe.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSKeyframeRule)
		**/
		var CSSKeyframeRule : {
			var prototype : js.html.CSSKeyframeRule;
		};
		/**
			The **`CSSKeyframesRule`** interface describes an object representing a complete set of keyframes for a CSS animation.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSKeyframesRule)
		**/
		var CSSKeyframesRule : {
			var prototype : js.html.CSSKeyframesRule;
		};
		/**
			The **`CSSKeywordValue`** interface of the CSS Typed Object Model API creates an object to represent CSS keywords and other identifiers.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSKeywordValue)
		**/
		var CSSKeywordValue : {
			var prototype : js.html.CSSKeywordValue;
		};
		/**
			The **`CSSLayerBlockRule`** represents a
		**/
		var CSSLayerBlockRule : {
			var prototype : js.html.CSSLayerBlockRule;
		};
		/**
			The **`CSSLayerStatementRule`** represents a
		**/
		var CSSLayerStatementRule : {
			var prototype : js.html.CSSLayerStatementRule;
		};
		var CSSMathClamp : {
			var prototype : js.html.CSSMathClamp;
		};
		/**
			The **`CSSMathInvert`** interface of the CSS Typed Object Model API represents a CSS calc used as `calc(1 / <value>)`.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathInvert)
		**/
		var CSSMathInvert : {
			var prototype : js.html.CSSMathInvert;
		};
		/**
			The **`CSSMathMax`** interface of the CSS Typed Object Model API represents the CSS max function.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathMax)
		**/
		var CSSMathMax : {
			var prototype : js.html.CSSMathMax;
		};
		/**
			The **`CSSMathMin`** interface of the CSS Typed Object Model API represents the CSS min function.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathMin)
		**/
		var CSSMathMin : {
			var prototype : js.html.CSSMathMin;
		};
		/**
			The **`CSSMathNegate`** interface of the CSS Typed Object Model API negates the value passed into it.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathNegate)
		**/
		var CSSMathNegate : {
			var prototype : js.html.CSSMathNegate;
		};
		/**
			The **`CSSMathProduct`** interface of the CSS Typed Object Model API represents the result obtained by calling CSSNumericValue.add, CSSNumericValue.sub, or CSSNumericValue.toSum on CSSNumericValue.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathProduct)
		**/
		var CSSMathProduct : {
			var prototype : js.html.CSSMathProduct;
		};
		/**
			The **`CSSMathSum`** interface of the CSS Typed Object Model API represents the result obtained by calling CSSNumericValue.add, CSSNumericValue.sub, or CSSNumericValue.toSum on CSSNumericValue.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathSum)
		**/
		var CSSMathSum : {
			var prototype : js.html.CSSMathSum;
		};
		/**
			The **`CSSMathValue`** interface of the CSS Typed Object Model API a base class for classes representing complex numeric values.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathValue)
		**/
		var CSSMathValue : {
			var prototype : js.html.CSSMathValue;
		};
		/**
			The **`CSSMatrixComponent`** interface of the CSS Typed Object Model API represents the matrix() and matrix3d() values of the individual transform property in CSS.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMatrixComponent)
		**/
		var CSSMatrixComponent : {
			var prototype : js.html.CSSMatrixComponent;
		};
		/**
			The **`CSSMediaRule`** interface represents a single CSS
		**/
		var CSSMediaRule : {
			var prototype : js.html.CSSMediaRule;
		};
		/**
			The **`CSSNamespaceRule`** interface describes an object representing a single CSS
		**/
		var CSSNamespaceRule : {
			var prototype : js.html.CSSNamespaceRule;
		};
		/**
			The **`CSSNestedDeclarations`** interface of the CSS Rule API is used to group nested CSSRules.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNestedDeclarations)
		**/
		var CSSNestedDeclarations : {
			var prototype : js.html.CSSNestedDeclarations;
		};
		/**
			The **`CSSNumericArray`** interface of the CSS Typed Object Model API contains a list of CSSNumericValue objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericArray)
		**/
		var CSSNumericArray : {
			var prototype : js.html.CSSNumericArray;
		};
		/**
			The **`CSSNumericValue`** interface of the CSS Typed Object Model API represents operations that all numeric values can perform.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue)
		**/
		var CSSNumericValue : {
			var prototype : js.html.CSSNumericValue;
			/**
				The **`parse()`** static method of the members are value and the units.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/parse_static)
			**/
			function parse(cssText:String):js.html.CSSNumericValue;
		};
		/**
			**`CSSPageRule`** represents a single CSS
		**/
		var CSSPageRule : {
			var prototype : js.html.CSSPageRule;
		};
		/**
			The **`CSSPerspective`** interface of the CSS Typed Object Model API represents the perspective() value of the individual transform property in CSS.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSPerspective)
		**/
		var CSSPerspective : {
			var prototype : js.html.CSSPerspective;
		};
		/**
			The **`CSSPropertyRule`** interface of the CSS Properties and Values API represents a single CSS
		**/
		var CSSPropertyRule : {
			var prototype : js.html.CSSPropertyRule;
		};
		/**
			The **`CSSRotate`** interface of the CSS Typed Object Model API represents the rotate value of the individual transform property in CSS.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRotate)
		**/
		var CSSRotate : {
			var prototype : js.html.CSSRotate;
		};
		/**
			The **`CSSRule`** interface represents a single CSS rule.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRule)
		**/
		var CSSRule : {
			var prototype : js.html.CSSRule;
			final STYLE_RULE : Int;
			final CHARSET_RULE : Int;
			final IMPORT_RULE : Int;
			final MEDIA_RULE : Int;
			final FONT_FACE_RULE : Int;
			final PAGE_RULE : Int;
			final NAMESPACE_RULE : Int;
			final KEYFRAMES_RULE : Int;
			final KEYFRAME_RULE : Int;
			final SUPPORTS_RULE : Int;
			final COUNTER_STYLE_RULE : Int;
			final FONT_FEATURE_VALUES_RULE : Int;
		};
		/**
			A `CSSRuleList` represents an ordered collection of read-only CSSRule objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSRuleList)
		**/
		var CSSRuleList : {
			var prototype : js.html.CSSRuleList;
		};
		/**
			The **`CSSScale`** interface of the CSS Typed Object Model API represents the scale() and scale3d() values of the individual transform property in CSS.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSScale)
		**/
		var CSSScale : {
			var prototype : js.html.CSSScale;
		};
		/**
			The **`CSSScopeRule`** interface of the CSS Object Model represents a CSS
		**/
		var CSSScopeRule : {
			var prototype : js.html.CSSScopeRule;
		};
		/**
			The **`CSSSkew`** interface of the CSS Typed Object Model API is part of the CSSTransformValue interface.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkew)
		**/
		var CSSSkew : {
			var prototype : js.html.CSSSkew;
		};
		/**
			The **`CSSSkewX`** interface of the CSS Typed Object Model API represents the `skewX()` value of the individual transform property in CSS.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkewX)
		**/
		var CSSSkewX : {
			var prototype : js.html.CSSSkewX;
		};
		/**
			The **`CSSSkewY`** interface of the CSS Typed Object Model API represents the `skewY()` value of the individual transform property in CSS.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSSkewY)
		**/
		var CSSSkewY : {
			var prototype : js.html.CSSSkewY;
		};
		/**
			The **`CSSStartingStyleRule`** interface of the CSS Object Model represents a CSS
		**/
		var CSSStartingStyleRule : {
			var prototype : js.html.CSSStartingStyleRule;
		};
		/**
			The **`CSSStyleDeclaration`** interface represents an object that is a CSS declaration block, and exposes style information and various style-related methods and properties.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleDeclaration)
		**/
		var CSSStyleDeclaration : {
			var prototype : js.html.CSSStyleDeclaration;
		};
		/**
			The **`CSSStyleRule`** interface represents a single CSS style rule.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleRule)
		**/
		var CSSStyleRule : {
			var prototype : js.html.CSSStyleRule;
		};
		/**
			The **`CSSStyleSheet`** interface represents a single CSS stylesheet, and lets you inspect and modify the list of rules contained in the stylesheet.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleSheet)
		**/
		var CSSStyleSheet : {
			var prototype : js.html.CSSStyleSheet;
		};
		/**
			The **`CSSStyleValue`** interface of the CSS Typed Object Model API is the base class of all CSS values accessible through the Typed OM API.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleValue)
		**/
		var CSSStyleValue : {
			var prototype : js.html.CSSStyleValue;
			/**
				The **`parse()`** static method of the CSSStyleValue interface sets a specific CSS property to the specified values and returns the first value as a CSSStyleValue object.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parse_static)
			**/
			function parse(property:String, cssText:String):js.html.CSSStyleValue;
			/**
				The **`parseAll()`** static method of the CSSStyleValue interface sets all occurrences of a specific CSS property to the specified value and returns an array of CSSStyleValue objects, each containing one of the supplied values.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSStyleValue/parseAll_static)
			**/
			function parseAll(property:String, cssText:String):Array<js.html.CSSStyleValue>;
		};
		/**
			The **`CSSSupportsRule`** interface represents a single CSS
		**/
		var CSSSupportsRule : {
			var prototype : js.html.CSSSupportsRule;
		};
		/**
			The **`CSSTransformComponent`** interface of the CSS Typed Object Model API is part of the CSSTransformValue interface.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformComponent)
		**/
		var CSSTransformComponent : {
			var prototype : js.html.CSSTransformComponent;
		};
		/**
			The **`CSSTransformValue`** interface of the CSS Typed Object Model API represents `transform-list` values as used by the CSS transform property.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransformValue)
		**/
		var CSSTransformValue : {
			var prototype : js.html.CSSTransformValue;
		};
		/**
			The **`CSSTransition`** interface of the Web Animations API represents an Animation object used for a CSS Transition.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTransition)
		**/
		var CSSTransition : {
			var prototype : js.html.CSSTransition;
		};
		/**
			The **`CSSTranslate`** interface of the CSS Typed Object Model API represents the translate() value of the individual transform property in CSS.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSTranslate)
		**/
		var CSSTranslate : {
			var prototype : js.html.CSSTranslate;
		};
		/**
			The **`CSSUnitValue`** interface of the CSS Typed Object Model API represents values that contain a single unit type.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSUnitValue)
		**/
		var CSSUnitValue : {
			var prototype : js.html.CSSUnitValue;
		};
		/**
			The **`CSSUnparsedValue`** interface of the CSS Typed Object Model API represents property values that reference custom properties.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSUnparsedValue)
		**/
		var CSSUnparsedValue : {
			var prototype : js.html.CSSUnparsedValue;
		};
		/**
			The **`CSSVariableReferenceValue`** interface of the CSS Typed Object Model API allows you to create a custom name for a built-in CSS value.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSVariableReferenceValue)
		**/
		var CSSVariableReferenceValue : {
			var prototype : js.html.CSSVariableReferenceValue;
		};
		var CSSViewTransitionRule : {
			var prototype : js.html.CSSViewTransitionRule;
		};
		/**
			The **`Cache`** interface provides a persistent storage mechanism for Request / Response object pairs that are cached in long lived memory.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Cache)
		**/
		var Cache : {
			var prototype : js.html.Cache;
		};
		/**
			The **`CacheStorage`** interface represents the storage for Cache objects.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CacheStorage)
		**/
		var CacheStorage : {
			var prototype : js.html.CacheStorage;
		};
		/**
			The **`CanvasCaptureMediaStreamTrack`** interface of the Media Capture and Streams API represents the video track contained in a MediaStream being generated from a canvas following a call to HTMLCanvasElement.captureStream().
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasCaptureMediaStreamTrack)
		**/
		var CanvasCaptureMediaStreamTrack : {
			var prototype : js.html.CanvasCaptureMediaStreamTrack;
		};
		/**
			The **`CanvasGradient`** interface represents an opaque object describing a gradient.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasGradient)
		**/
		var CanvasGradient : {
			var prototype : js.html.CanvasGradient;
		};
		/**
			The **`CanvasPattern`** interface represents an opaque object describing a pattern, based on an image, a canvas, or a video, created by the CanvasRenderingContext2D.createPattern() method.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasPattern)
		**/
		var CanvasPattern : {
			var prototype : js.html.CanvasPattern;
		};
		/**
			The **`CanvasRenderingContext2D`** interface, part of the Canvas API, provides the 2D rendering context for the drawing surface of a canvas element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CanvasRenderingContext2D)
		**/
		var CanvasRenderingContext2D : {
			var prototype : js.html.CanvasRenderingContext2D;
		};
		/**
			The `CaretPosition` interface represents the caret position, an indicator for the text insertion point.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CaretPosition)
		**/
		var CaretPosition : {
			var prototype : js.html.CaretPosition;
		};
		/**
			The `ChannelMergerNode` interface, often used in conjunction with its opposite, ChannelSplitterNode, reunites different mono inputs into a single output.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ChannelMergerNode)
		**/
		var ChannelMergerNode : {
			var prototype : js.html.audio.ChannelMergerNode;
		};
		/**
			The `ChannelSplitterNode` interface, often used in conjunction with its opposite, ChannelMergerNode, separates the different channels of an audio source into a set of mono outputs.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ChannelSplitterNode)
		**/
		var ChannelSplitterNode : {
			var prototype : js.html.audio.ChannelSplitterNode;
		};
		/**
			The **`CharacterData`** abstract interface represents a Node object that contains characters.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CharacterData)
		**/
		var CharacterData : {
			var prototype : js.html.CharacterData;
		};
		/**
			The **`Clipboard`** interface of the Clipboard API provides read and write access to the contents of the system clipboard.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Clipboard)
		**/
		var Clipboard : {
			var prototype : js.html.Clipboard;
		};
		/**
			The **`ClipboardEvent`** interface of the Clipboard API represents events providing information related to modification of the clipboard, that is Element/cut_event, Element/copy_event, and Element/paste_event events.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ClipboardEvent)
		**/
		var ClipboardEvent : {
			var prototype : js.html.ClipboardEvent;
		};
		/**
			The **`ClipboardItem`** interface of the Clipboard API represents a single item format, used when reading or writing clipboard data using Clipboard.read() and Clipboard.write() respectively.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ClipboardItem)
		**/
		var ClipboardItem : {
			var prototype : js.html.ClipboardItem;
			/**
				The **`supports()`** static method of the ClipboardItem interface returns `true` if the given MIME type is supported by the clipboard, and `false` otherwise.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/ClipboardItem/supports_static)
			**/
			function supports(type:String):Bool;
		};
		/**
			A `CloseEvent` is sent to clients using WebSockets when the connection is closed.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CloseEvent)
		**/
		var CloseEvent : {
			var prototype : js.html.CloseEvent;
		};
		/**
			The **`Comment`** interface represents textual notations within markup; although it is generally not visually shown, such comments are available to be read in the source view.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Comment)
		**/
		var Comment : {
			var prototype : js.html.Comment;
		};
		/**
			The DOM **`CompositionEvent`** represents events that occur due to the user indirectly entering text.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompositionEvent)
		**/
		var CompositionEvent : {
			var prototype : js.html.CompositionEvent;
		};
		/**
			The **`CompressionStream`** interface of the Compression Streams API is an API for compressing a stream of data.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CompressionStream)
		**/
		var CompressionStream : {
			var prototype : js.html.CompressionStream;
		};
		/**
			The `ConstantSourceNode` interface—part of the Web Audio API—represents an audio source (based upon AudioScheduledSourceNode) whose output is single unchanging value.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ConstantSourceNode)
		**/
		var ConstantSourceNode : {
			var prototype : js.html.audio.ConstantSourceNode;
		};
		/**
			The **`ContentVisibilityAutoStateChangeEvent`** interface is the event object for the element/contentvisibilityautostatechange_event event, which fires on any element with content-visibility set on it when it starts or stops being relevant to the user and skipping its contents.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ContentVisibilityAutoStateChangeEvent)
		**/
		var ContentVisibilityAutoStateChangeEvent : {
			var prototype : js.html.ContentVisibilityAutoStateChangeEvent;
		};
		/**
			The `ConvolverNode` interface is an AudioNode that performs a Linear Convolution on a given AudioBuffer, often used to achieve a reverb effect.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ConvolverNode)
		**/
		var ConvolverNode : {
			var prototype : js.html.audio.ConvolverNode;
		};
		/**
			The **`CookieChangeEvent`** interface of the Cookie Store API is the event type of the CookieStore/change_event event fired at a CookieStore when any cookies are created or deleted.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieChangeEvent)
		**/
		var CookieChangeEvent : {
			var prototype : js.html.CookieChangeEvent;
		};
		/**
			The **`CookieStore`** interface of the Cookie Store API provides methods for getting and setting cookies asynchronously from either a page or a service worker.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStore)
		**/
		var CookieStore : {
			var prototype : js.html.CookieStore;
		};
		/**
			The **`CookieStoreManager`** interface of the Cookie Store API allows service workers to subscribe to cookie change events.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CookieStoreManager)
		**/
		var CookieStoreManager : {
			var prototype : js.html.CookieStoreManager;
		};
		/**
			The **`CountQueuingStrategy`** interface of the Streams API provides a built-in chunk counting queuing strategy that can be used when constructing streams.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CountQueuingStrategy)
		**/
		var CountQueuingStrategy : {
			var prototype : js.html.CountQueuingStrategy;
		};
		/**
			The **`Credential`** interface of the Credential Management API provides information about an entity (usually a user) normally as a prerequisite to a trust decision.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Credential)
		**/
		var Credential : {
			var prototype : js.html.Credential;
		};
		/**
			The **`CredentialsContainer`** interface of the Credential Management API exposes methods to request credentials and notify the user agent when events such as successful sign in or sign out happen.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CredentialsContainer)
		**/
		var CredentialsContainer : {
			var prototype : js.html.CredentialsContainer;
		};
		/**
			The **`Crypto`** interface represents basic cryptography features available in the current context.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Crypto)
		**/
		var Crypto : {
			var prototype : js.html.Crypto;
		};
		/**
			The **`CryptoKey`** interface of the Web Crypto API represents a cryptographic key obtained from one of the SubtleCrypto methods SubtleCrypto.generateKey, SubtleCrypto.deriveKey, SubtleCrypto.importKey, or SubtleCrypto.unwrapKey.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CryptoKey)
		**/
		var CryptoKey : {
			var prototype : js.html.CryptoKey;
		};
		/**
			The **`CustomElementRegistry`** interface provides methods for registering custom elements and querying registered elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomElementRegistry)
		**/
		var CustomElementRegistry : {
			var prototype : js.html.CustomElementRegistry;
		};
		/**
			The **`CustomEvent`** interface represents events initialized by an application for any purpose.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomEvent)
		**/
		var CustomEvent : {
			var prototype : js.html.CustomEvent_<Dynamic>;
		};
		/**
			The **`CustomStateSet`** interface of the Document Object Model stores a list of states for an autonomous custom element, and allows states to be added and removed from the set.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/CustomStateSet)
		**/
		var CustomStateSet : {
			var prototype : js.html.CustomStateSet;
		};
		/**
			The **`DOMException`** interface represents an abnormal event (called an **exception**) that occurs as a result of calling a method or accessing a property of a web API.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMException)
		**/
		var DOMException : {
			var prototype : js.html.DOMException;
			final INDEX_SIZE_ERR : Int;
			final DOMSTRING_SIZE_ERR : Int;
			final HIERARCHY_REQUEST_ERR : Int;
			final WRONG_DOCUMENT_ERR : Int;
			final INVALID_CHARACTER_ERR : Int;
			final NO_DATA_ALLOWED_ERR : Int;
			final NO_MODIFICATION_ALLOWED_ERR : Int;
			final NOT_FOUND_ERR : Int;
			final NOT_SUPPORTED_ERR : Int;
			final INUSE_ATTRIBUTE_ERR : Int;
			final INVALID_STATE_ERR : Int;
			final SYNTAX_ERR : Int;
			final INVALID_MODIFICATION_ERR : Int;
			final NAMESPACE_ERR : Int;
			final INVALID_ACCESS_ERR : Int;
			final VALIDATION_ERR : Int;
			final TYPE_MISMATCH_ERR : Int;
			final SECURITY_ERR : Int;
			final NETWORK_ERR : Int;
			final ABORT_ERR : Int;
			final URL_MISMATCH_ERR : Int;
			final QUOTA_EXCEEDED_ERR : Int;
			final TIMEOUT_ERR : Int;
			final INVALID_NODE_TYPE_ERR : Int;
			final DATA_CLONE_ERR : Int;
		};
		/**
			The **`DOMImplementation`** interface represents an object providing methods which are not dependent on any particular document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMImplementation)
		**/
		var DOMImplementation : {
			var prototype : js.html.DOMImplementation;
		};
		/**
			The **`DOMMatrix`** interface represents 4×4 matrices, suitable for 2D and 3D operations including rotation and translation.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMMatrix)
		**/
		var DOMMatrix : {
			var prototype : js.html.DOMMatrix;
			function fromFloat32Array(array32:js.lib.Float32Array_<js.lib.ArrayBuffer>):js.html.DOMMatrix;
			function fromFloat64Array(array64:js.lib.Float64Array_<js.lib.ArrayBuffer>):js.html.DOMMatrix;
			function fromMatrix(?other:js.html.DOMMatrixInit):js.html.DOMMatrix;
		};
		var SVGMatrix : {
			var prototype : js.html.DOMMatrix;
			function fromFloat32Array(array32:js.lib.Float32Array_<js.lib.ArrayBuffer>):js.html.DOMMatrix;
			function fromFloat64Array(array64:js.lib.Float64Array_<js.lib.ArrayBuffer>):js.html.DOMMatrix;
			function fromMatrix(?other:js.html.DOMMatrixInit):js.html.DOMMatrix;
		};
		var WebKitCSSMatrix : {
			var prototype : js.html.DOMMatrix;
			function fromFloat32Array(array32:js.lib.Float32Array_<js.lib.ArrayBuffer>):js.html.DOMMatrix;
			function fromFloat64Array(array64:js.lib.Float64Array_<js.lib.ArrayBuffer>):js.html.DOMMatrix;
			function fromMatrix(?other:js.html.DOMMatrixInit):js.html.DOMMatrix;
		};
		/**
			The **`DOMMatrixReadOnly`** interface represents a read-only 4×4 matrix, suitable for 2D and 3D operations.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMMatrixReadOnly)
		**/
		var DOMMatrixReadOnly : {
			var prototype : js.html.DOMMatrixReadOnly;
			function fromFloat32Array(array32:js.lib.Float32Array_<js.lib.ArrayBuffer>):js.html.DOMMatrixReadOnly;
			function fromFloat64Array(array64:js.lib.Float64Array_<js.lib.ArrayBuffer>):js.html.DOMMatrixReadOnly;
			function fromMatrix(?other:js.html.DOMMatrixInit):js.html.DOMMatrixReadOnly;
		};
		/**
			The **`DOMParser`** interface provides the ability to parse XML or HTML source code from a string into a DOM Document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMParser)
		**/
		var DOMParser : {
			var prototype : js.html.DOMParser;
		};
		/**
			A **`DOMPoint`** object represents a 2D or 3D point in a coordinate system; it includes values for the coordinates in up to three dimensions, as well as an optional perspective value.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMPoint)
		**/
		var DOMPoint : {
			var prototype : js.html.DOMPoint;
			/**
				The **`fromPoint()`** static method of the DOMPoint interface creates and returns a new mutable `DOMPoint` object given a source point.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMPoint/fromPoint_static)
			**/
			function fromPoint(?other:js.html.DOMPointInit):js.html.DOMPoint;
		};
		var SVGPoint : {
			var prototype : js.html.DOMPoint;
			/**
				The **`fromPoint()`** static method of the DOMPoint interface creates and returns a new mutable `DOMPoint` object given a source point.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMPoint/fromPoint_static)
			**/
			function fromPoint(?other:js.html.DOMPointInit):js.html.DOMPoint;
		};
		/**
			The **`DOMPointReadOnly`** interface specifies the coordinate and perspective fields used by DOMPoint to define a 2D or 3D point in a coordinate system.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly)
		**/
		var DOMPointReadOnly : {
			var prototype : js.html.DOMPointReadOnly;
			/**
				The static **DOMPointReadOnly** method `fromPoint()` creates and returns a new `DOMPointReadOnly` object given a source point.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMPointReadOnly/fromPoint_static)
			**/
			function fromPoint(?other:js.html.DOMPointInit):js.html.DOMPointReadOnly;
		};
		/**
			A `DOMQuad` is a collection of four `DOMPoint`s defining the corners of an arbitrary quadrilateral.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMQuad)
		**/
		var DOMQuad : {
			var prototype : js.html.DOMQuad;
			function fromQuad(?other:js.html.DOMQuadInit):js.html.DOMQuad;
			function fromRect(?other:js.html.DOMRectInit):js.html.DOMQuad;
		};
		/**
			A **`DOMRect`** describes the size and position of a rectangle.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMRect)
		**/
		var DOMRect : {
			var prototype : js.html.DOMRect;
			/**
				The **`fromRect()`** static method of the object with a given location and dimensions.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
			**/
			function fromRect(?other:js.html.DOMRectInit):js.html.DOMRect;
		};
		var SVGRect : {
			var prototype : js.html.DOMRect;
			/**
				The **`fromRect()`** static method of the object with a given location and dimensions.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMRect/fromRect_static)
			**/
			function fromRect(?other:js.html.DOMRectInit):js.html.DOMRect;
		};
		/**
			The **`DOMRectList`** interface represents a collection of DOMRect objects, typically used to hold the rectangles associated with a particular element, like bounding boxes returned by methods such as Element.getClientRects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMRectList)
		**/
		var DOMRectList : {
			var prototype : js.html.DOMRectList;
		};
		/**
			The **`DOMRectReadOnly`** interface specifies the standard properties (also used by DOMRect) to define a rectangle whose properties are immutable.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly)
		**/
		var DOMRectReadOnly : {
			var prototype : js.html.DOMRectReadOnly;
			/**
				The **`fromRect()`** static method of the object with a given location and dimensions.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMRectReadOnly/fromRect_static)
			**/
			function fromRect(?other:js.html.DOMRectInit):js.html.DOMRectReadOnly;
		};
		/**
			The **`DOMStringList`** interface is a legacy type returned by some APIs and represents a non-modifiable list of strings (`DOMString`).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMStringList)
		**/
		var DOMStringList : {
			var prototype : js.html.DOMStringList;
		};
		/**
			The **`DOMStringMap`** interface is used for the HTMLElement.dataset attribute, to represent data for custom attributes added to elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMStringMap)
		**/
		var DOMStringMap : {
			var prototype : js.html.DOMStringMap;
		};
		/**
			The **`DOMTokenList`** interface represents a set of space-separated tokens.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DOMTokenList)
		**/
		var DOMTokenList : {
			var prototype : js.html.DOMTokenList;
		};
		/**
			The **`DataTransfer`** object is used to hold any data transferred between contexts, such as a drag and drop operation, or clipboard read/write.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DataTransfer)
		**/
		var DataTransfer : {
			var prototype : js.html.DataTransfer;
		};
		/**
			The **`DataTransferItem`** object represents one drag data item.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DataTransferItem)
		**/
		var DataTransferItem : {
			var prototype : js.html.DataTransferItem;
		};
		/**
			The **`DataTransferItemList`** object is a list of DataTransferItem objects representing items being dragged.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DataTransferItemList)
		**/
		var DataTransferItemList : {
			var prototype : js.html.DataTransferItemList;
		};
		/**
			The **`DecompressionStream`** interface of the Compression Streams API is an API for decompressing a stream of data.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DecompressionStream)
		**/
		var DecompressionStream : {
			var prototype : js.html.DecompressionStream;
		};
		/**
			The **`DelayNode`** interface represents a delay-line; an AudioNode audio-processing module that causes a delay between the arrival of an input data and its propagation to the output.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DelayNode)
		**/
		var DelayNode : {
			var prototype : js.html.audio.DelayNode;
		};
		/**
			The **`DeviceMotionEvent`** interface of the Device Orientation Events provides web developers with information about the speed of changes for the device's position and orientation.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DeviceMotionEvent)
		**/
		var DeviceMotionEvent : {
			var prototype : js.html.DeviceMotionEvent;
		};
		/**
			The **`DeviceOrientationEvent`** interface of the Device Orientation Events provides web developers with information from the physical orientation of the device running the web page.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DeviceOrientationEvent)
		**/
		var DeviceOrientationEvent : {
			var prototype : js.html.DeviceOrientationEvent;
		};
		/**
			The **`Document`** interface represents any web page loaded in the browser and serves as an entry point into the web page's content, which is the DOM tree.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document)
		**/
		var Document : {
			var prototype : js.html.Document;
			/**
				The **`parseHTMLUnsafe()`** static method of the Document object is used to parse an HTML input, optionally filtering unwanted HTML elements and attributes, in order to create a new Document instance.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/parseHTMLUnsafe_static)
			**/
			function parseHTMLUnsafe(html:String):js.html.Document;
		};
		/**
			The **`DocumentFragment`** interface represents a minimal document object that has no parent.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DocumentFragment)
		**/
		var DocumentFragment : {
			var prototype : js.html.DocumentFragment;
		};
		/**
			The **`DocumentTimeline`** interface of the Web Animations API represents animation timelines, including the default document timeline (accessed via Document.timeline).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DocumentTimeline)
		**/
		var DocumentTimeline : {
			var prototype : js.html.DocumentTimeline;
		};
		/**
			The **`DocumentType`** interface represents a Node containing a doctype.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DocumentType)
		**/
		var DocumentType : {
			var prototype : js.html.DocumentType;
		};
		/**
			The **`DragEvent`** interface is a DOM event that represents a drag and drop interaction.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DragEvent)
		**/
		var DragEvent : {
			var prototype : js.html.DragEvent;
		};
		/**
			The `DynamicsCompressorNode` interface provides a compression effect, which lowers the volume of the loudest parts of the signal in order to help prevent clipping and distortion that can occur when multiple sounds are played and multiplexed together at once.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/DynamicsCompressorNode)
		**/
		var DynamicsCompressorNode : {
			var prototype : js.html.audio.DynamicsCompressorNode;
		};
		/**
			**`Element`** is the most general base class from which all element objects (i.e., objects that represent elements) in a Document inherit.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element)
		**/
		var Element : {
			var prototype : js.html.DOMElement;
		};
		/**
			The **`ElementInternals`** interface of the Document Object Model gives web developers a way to allow custom elements to fully participate in HTML forms.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ElementInternals)
		**/
		var ElementInternals : {
			var prototype : js.html.ElementInternals;
		};
		/**
			The **`EncodedAudioChunk`** interface of the WebCodecs API represents a chunk of encoded audio data.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedAudioChunk)
		**/
		var EncodedAudioChunk : {
			var prototype : js.html.EncodedAudioChunk;
		};
		/**
			The **`EncodedVideoChunk`** interface of the WebCodecs API represents a chunk of encoded video data.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/EncodedVideoChunk)
		**/
		var EncodedVideoChunk : {
			var prototype : js.html.EncodedVideoChunk;
		};
		/**
			The **`ErrorEvent`** interface represents events providing information related to errors in scripts or in files.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ErrorEvent)
		**/
		var ErrorEvent : {
			var prototype : js.html.ErrorEvent;
		};
		/**
			The **`Event`** interface represents an event which takes place on an `EventTarget`.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Event)
		**/
		var Event : {
			var prototype : js.html.Event;
			final NONE : Int;
			final CAPTURING_PHASE : Int;
			final AT_TARGET : Int;
			final BUBBLING_PHASE : Int;
		};
		/**
			The **`EventCounts`** interface of the Performance API provides the number of events that have been dispatched for each event type.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventCounts)
		**/
		var EventCounts : {
			var prototype : js.html.EventCounts;
		};
		/**
			The **`EventSource`** interface is web content's interface to server-sent events.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventSource)
		**/
		var EventSource : {
			var prototype : js.html.EventSource;
			final CONNECTING : Int;
			final OPEN : Int;
			final CLOSED : Int;
		};
		/**
			The **`EventTarget`** interface is implemented by objects that can receive events and may have listeners for them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/EventTarget)
		**/
		var EventTarget : {
			var prototype : js.html.EventTarget;
		};
		var External : {
			var prototype : js.html.External;
		};
		/**
			The **`File`** interface provides information about files and allows JavaScript in a web page to access their content.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/File)
			
			`File` class is a global reference for `import { File } from 'node:node:buffer'`
			https://nodejs.org/api/buffer.html#class-file
		**/
		var File : {
			var prototype : js.html.File;
		};
		/**
			The **`FileList`** interface represents an object of this type returned by the `files` property of the HTML input element; this lets you access the list of files selected with the `<input type='file'>` element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileList)
		**/
		var FileList : {
			var prototype : js.html.FileList;
		};
		/**
			The **`FileReader`** interface lets web applications asynchronously read the contents of files (or raw data buffers) stored on the user's computer, using File or Blob objects to specify the file or data to read.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileReader)
		**/
		var FileReader : {
			var prototype : js.html.FileReader;
			final EMPTY : Int;
			final LOADING : Int;
			final DONE : Int;
		};
		/**
			The File and Directory Entries API interface **`FileSystem`** is used to represent a file system.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystem)
		**/
		var FileSystem : {
			var prototype : js.html.FileSystem;
		};
		/**
			The **`FileSystemDirectoryEntry`** interface of the File and Directory Entries API represents a directory in a file system.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryEntry)
		**/
		var FileSystemDirectoryEntry : {
			var prototype : js.html.FileSystemDirectoryEntry;
		};
		/**
			The **`FileSystemDirectoryHandle`** interface of the File System API provides a handle to a file system directory.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle)
		**/
		var FileSystemDirectoryHandle : {
			var prototype : js.html.FileSystemDirectoryHandle;
		};
		/**
			The `FileSystemDirectoryReader` interface of the File and Directory Entries API lets you access the FileSystemFileEntry-based objects (generally FileSystemFileEntry or FileSystemDirectoryEntry) representing each entry in a directory.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryReader)
		**/
		var FileSystemDirectoryReader : {
			var prototype : js.html.FileSystemDirectoryReader;
		};
		/**
			The **`FileSystemEntry`** interface of the File and Directory Entries API represents a single entry in a file system.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemEntry)
		**/
		var FileSystemEntry : {
			var prototype : js.html.FileSystemEntry;
		};
		/**
			The **`FileSystemFileEntry`** interface of the File and Directory Entries API represents a file in a file system.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemFileEntry)
		**/
		var FileSystemFileEntry : {
			var prototype : js.html.FileSystemFileEntry;
		};
		/**
			The **`FileSystemFileHandle`** interface of the File System API represents a handle to a file system entry.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle)
		**/
		var FileSystemFileHandle : {
			var prototype : js.html.FileSystemFileHandle;
		};
		/**
			The **`FileSystemHandle`** interface of the File System API is an object which represents a file or directory entry.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemHandle)
		**/
		var FileSystemHandle : {
			var prototype : js.html.FileSystemHandle;
		};
		/**
			The **`FileSystemWritableFileStream`** interface of the File System API is a WritableStream object with additional convenience methods, which operates on a single file on disk.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream)
		**/
		var FileSystemWritableFileStream : {
			var prototype : js.html.FileSystemWritableFileStream;
		};
		/**
			The **`FocusEvent`** interface represents focus-related events, including Element/focus_event, Element/blur_event, Element/focusin_event, and Element/focusout_event.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FocusEvent)
		**/
		var FocusEvent : {
			var prototype : js.html.FocusEvent;
		};
		/**
			The **`FontFace`** interface of the CSS Font Loading API represents a single usable font face.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FontFace)
		**/
		var FontFace : {
			var prototype : js.html.FontFace;
		};
		/**
			The **`FontFaceSet`** interface of the CSS Font Loading API manages the loading of font-faces and querying of their download status.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FontFaceSet)
		**/
		var FontFaceSet : {
			var prototype : js.html.FontFaceSet;
		};
		/**
			The **`FontFaceSetLoadEvent`** interface of the CSS Font Loading API represents events fired at a FontFaceSet after it starts loading font faces.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FontFaceSetLoadEvent)
		**/
		var FontFaceSetLoadEvent : {
			var prototype : js.html.FontFaceSetLoadEvent;
		};
		/**
			The **`FormData`** interface provides a way to construct a set of key/value pairs representing form fields and their values, which can be sent using the Window/fetch, XMLHttpRequest.send() or navigator.sendBeacon() methods.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormData)
		**/
		var FormData : {
			var prototype : js.html.FormData;
		};
		/**
			The **`FormDataEvent`** interface represents a `formdata` event — such an event is fired on an HTMLFormElement object after the entry list representing the form's data is constructed.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FormDataEvent)
		**/
		var FormDataEvent : {
			var prototype : js.html.FormDataEvent;
		};
		/**
			The **`FragmentDirective`** interface is an object exposed to allow code to check whether or not a browser supports text fragments.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/FragmentDirective)
		**/
		var FragmentDirective : {
			var prototype : js.html.FragmentDirective;
		};
		/**
			The `GainNode` interface represents a change in volume.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/GainNode)
		**/
		var GainNode : {
			var prototype : js.html.audio.GainNode;
		};
		/**
			The **`Gamepad`** interface of the Gamepad API defines an individual gamepad or other controller, allowing access to information such as button presses, axis positions, and id.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Gamepad)
		**/
		var Gamepad : {
			var prototype : js.html.Gamepad;
		};
		/**
			The **`GamepadButton`** interface defines an individual button of a gamepad or other controller, allowing access to the current state of different types of buttons available on the control device.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/GamepadButton)
		**/
		var GamepadButton : {
			var prototype : js.html.GamepadButton;
		};
		/**
			The GamepadEvent interface of the Gamepad API contains references to gamepads connected to the system, which is what the gamepad events Window.gamepadconnected_event and Window.gamepaddisconnected_event are fired in response to.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/GamepadEvent)
		**/
		var GamepadEvent : {
			var prototype : js.html.GamepadEvent;
		};
		/**
			The **`GamepadHapticActuator`** interface of the Gamepad API represents hardware in the controller designed to provide haptic feedback to the user (if available), most commonly vibration hardware.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/GamepadHapticActuator)
		**/
		var GamepadHapticActuator : {
			var prototype : js.html.GamepadHapticActuator;
		};
		/**
			The **`Geolocation`** interface represents an object able to obtain the position of the device programmatically.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Geolocation)
		**/
		var Geolocation : {
			var prototype : js.html.Geolocation;
		};
		/**
			The **`GeolocationCoordinates`** interface represents the position and altitude of the device on Earth, as well as the accuracy with which these properties are calculated.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationCoordinates)
		**/
		var GeolocationCoordinates : {
			var prototype : js.html.GeolocationCoordinates;
		};
		/**
			The **`GeolocationPosition`** interface represents the position of the concerned device at a given time.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPosition)
		**/
		var GeolocationPosition : {
			var prototype : js.html.GeolocationPosition;
		};
		/**
			The **`GeolocationPositionError`** interface represents the reason of an error occurring when using the geolocating device.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/GeolocationPositionError)
		**/
		var GeolocationPositionError : {
			var prototype : js.html.GeolocationPositionError;
			final PERMISSION_DENIED : Int;
			final POSITION_UNAVAILABLE : Int;
			final TIMEOUT : Int;
		};
		/**
			The **`HTMLAllCollection`** interface represents a collection of _all_ of the document's elements, accessible by index (like an array) and by the element's `id`.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLAllCollection)
		**/
		var HTMLAllCollection : {
			var prototype : js.html.HTMLAllCollection;
		};
		/**
			The **`HTMLAnchorElement`** interface represents hyperlink elements and provides special properties and methods (beyond those of the regular HTMLElement object interface that they inherit from) for manipulating the layout and presentation of such elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLAnchorElement)
		**/
		var HTMLAnchorElement : {
			var prototype : js.html.AnchorElement;
		};
		/**
			The **`HTMLAreaElement`** interface provides special properties and methods (beyond those of the regular object HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of area elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLAreaElement)
		**/
		var HTMLAreaElement : {
			var prototype : js.html.AreaElement;
		};
		/**
			The **`HTMLAudioElement`** interface provides access to the properties of audio elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLAudioElement)
		**/
		var HTMLAudioElement : {
			var prototype : js.html.AudioElement;
		};
		/**
			The **`HTMLBRElement`** interface represents an HTML line break element (br).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLBRElement)
		**/
		var HTMLBRElement : {
			var prototype : js.html.BRElement;
		};
		/**
			The **`HTMLBaseElement`** interface contains the base URI for a document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLBaseElement)
		**/
		var HTMLBaseElement : {
			var prototype : js.html.BaseElement;
		};
		/**
			The **`HTMLBodyElement`** interface provides special properties (beyond those inherited from the regular HTMLElement interface) for manipulating body elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLBodyElement)
		**/
		var HTMLBodyElement : {
			var prototype : js.html.BodyElement;
		};
		/**
			The **`HTMLButtonElement`** interface provides properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating button elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLButtonElement)
		**/
		var HTMLButtonElement : {
			var prototype : js.html.ButtonElement;
		};
		/**
			The **`HTMLCanvasElement`** interface provides properties and methods for manipulating the layout and presentation of canvas elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement)
		**/
		var HTMLCanvasElement : {
			var prototype : js.html.CanvasElement;
		};
		var HTMLCollection : {
			var prototype : js.html.HTMLCollection;
		};
		/**
			The **`HTMLDListElement`** interface provides special properties (beyond those of the regular HTMLElement interface it also has available to it by inheritance) for manipulating definition list (dl) elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDListElement)
		**/
		var HTMLDListElement : {
			var prototype : js.html.DListElement;
		};
		/**
			The **`HTMLDataElement`** interface provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating data elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDataElement)
		**/
		var HTMLDataElement : {
			var prototype : js.html.DataElement;
		};
		/**
			The **`HTMLDataListElement`** interface provides special properties (beyond the HTMLElement object interface it also has available to it by inheritance) to manipulate datalist elements and their content.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDataListElement)
		**/
		var HTMLDataListElement : {
			var prototype : js.html.DataListElement;
		};
		/**
			The **`HTMLDetailsElement`** interface provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating details elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDetailsElement)
		**/
		var HTMLDetailsElement : {
			var prototype : js.html.DetailsElement;
		};
		/**
			The **`HTMLDialogElement`** interface provides methods to manipulate dialog elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement)
		**/
		var HTMLDialogElement : {
			var prototype : js.html.DialogElement;
		};
		var HTMLDirectoryElement : {
			var prototype : js.html.DirectoryElement;
		};
		/**
			The **`HTMLDivElement`** interface provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating div elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDivElement)
		**/
		var HTMLDivElement : {
			var prototype : js.html.DivElement;
		};
		var HTMLDocument : {
			var prototype : js.html.HTMLDocument;
		};
		/**
			The **`HTMLElement`** interface represents any HTML element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement)
		**/
		var HTMLElement : {
			var prototype : js.html.Element;
		};
		/**
			The **`HTMLEmbedElement`** interface provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating embed elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLEmbedElement)
		**/
		var HTMLEmbedElement : {
			var prototype : js.html.EmbedElement;
		};
		/**
			The **`HTMLFieldSetElement`** interface provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of fieldset elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFieldSetElement)
		**/
		var HTMLFieldSetElement : {
			var prototype : js.html.FieldSetElement;
		};
		/**
			Implements the document object model (DOM) representation of the font element.
		**/
		var HTMLFontElement : {
			var prototype : js.html.FontElement;
		};
		/**
			The **`HTMLFormControlsCollection`** interface represents a _collection_ of HTML _form control elements_, returned by the HTMLFormElement interface's HTMLFormElement.elements property.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormControlsCollection)
		**/
		var HTMLFormControlsCollection : {
			var prototype : js.html.HTMLFormControlsCollection;
		};
		/**
			The **`HTMLFormElement`** interface represents a form element in the DOM.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement)
		**/
		var HTMLFormElement : {
			var prototype : js.html.FormElement;
		};
		var HTMLFrameElement : {
			var prototype : js.html.FrameElement;
		};
		/**
			The **`HTMLFrameSetElement`** interface provides special properties (beyond those of the regular HTMLElement interface they also inherit) for manipulating frameset elements.
		**/
		var HTMLFrameSetElement : {
			var prototype : js.html.FrameSetElement;
		};
		/**
			The **`HTMLHRElement`** interface provides special properties (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating hr elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLHRElement)
		**/
		var HTMLHRElement : {
			var prototype : js.html.HRElement;
		};
		/**
			The **`HTMLHeadElement`** interface contains the descriptive information, or metadata, for a document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLHeadElement)
		**/
		var HTMLHeadElement : {
			var prototype : js.html.HeadElement;
		};
		/**
			The **`HTMLHeadingElement`** interface represents the different heading elements, `<h1>` through `<h6>`.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLHeadingElement)
		**/
		var HTMLHeadingElement : {
			var prototype : js.html.HeadingElement;
		};
		/**
			The **`HTMLHtmlElement`** interface serves as the root node for a given HTML document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLHtmlElement)
		**/
		var HTMLHtmlElement : {
			var prototype : js.html.HtmlElement;
		};
		/**
			The **`HTMLIFrameElement`** interface provides special properties and methods (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of inline frame elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLIFrameElement)
		**/
		var HTMLIFrameElement : {
			var prototype : js.html.IFrameElement;
		};
		/**
			The **`HTMLImageElement`** interface represents an HTML img element, providing the properties and methods used to manipulate image elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLImageElement)
		**/
		var HTMLImageElement : {
			var prototype : js.html.ImageElement;
		};
		/**
			The **`HTMLInputElement`** interface provides special properties and methods for manipulating the options, layout, and presentation of input elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLInputElement)
		**/
		var HTMLInputElement : {
			var prototype : js.html.InputElement;
		};
		/**
			The **`HTMLLIElement`** interface exposes specific properties and methods (beyond those defined by regular HTMLElement interface it also has available to it by inheritance) for manipulating list elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLLIElement)
		**/
		var HTMLLIElement : {
			var prototype : js.html.LIElement;
		};
		/**
			The **`HTMLLabelElement`** interface gives access to properties specific to label elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLLabelElement)
		**/
		var HTMLLabelElement : {
			var prototype : js.html.LabelElement;
		};
		/**
			The **`HTMLLegendElement`** is an interface allowing to access properties of the legend elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLLegendElement)
		**/
		var HTMLLegendElement : {
			var prototype : js.html.LegendElement;
		};
		/**
			The **`HTMLLinkElement`** interface represents reference information for external resources and the relationship of those resources to a document and vice versa (corresponds to `<link>` element; not to be confused with `<a>`, which is represented by `HTMLAnchorElement`).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLLinkElement)
		**/
		var HTMLLinkElement : {
			var prototype : js.html.LinkElement;
		};
		/**
			The **`HTMLMapElement`** interface provides special properties and methods (beyond those of the regular object HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of map elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMapElement)
		**/
		var HTMLMapElement : {
			var prototype : js.html.MapElement;
		};
		/**
			The **`HTMLMarqueeElement`** interface provides methods to manipulate marquee elements.
		**/
		var HTMLMarqueeElement : {
			var prototype : js.html.HTMLMarqueeElement;
		};
		/**
			The **`HTMLMediaElement`** interface adds to HTMLElement the properties and methods needed to support basic media-related capabilities that are common to audio and video.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement)
		**/
		var HTMLMediaElement : {
			var prototype : js.html.MediaElement;
			final NETWORK_EMPTY : Int;
			final NETWORK_IDLE : Int;
			final NETWORK_LOADING : Int;
			final NETWORK_NO_SOURCE : Int;
			final HAVE_NOTHING : Int;
			final HAVE_METADATA : Int;
			final HAVE_CURRENT_DATA : Int;
			final HAVE_FUTURE_DATA : Int;
			final HAVE_ENOUGH_DATA : Int;
		};
		/**
			The **`HTMLMenuElement`** interface provides additional properties (beyond those inherited from the HTMLElement interface) for manipulating a menu element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMenuElement)
		**/
		var HTMLMenuElement : {
			var prototype : js.html.MenuElement;
		};
		/**
			The **`HTMLMetaElement`** interface contains descriptive metadata about a document provided in HTML as `<meta>` elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMetaElement)
		**/
		var HTMLMetaElement : {
			var prototype : js.html.MetaElement;
		};
		/**
			The HTML meter elements expose the **`HTMLMeterElement`** interface, which provides special properties and methods (beyond the HTMLElement object interface they also have available to them by inheritance) for manipulating the layout and presentation of meter elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMeterElement)
		**/
		var HTMLMeterElement : {
			var prototype : js.html.MeterElement;
		};
		/**
			The **`HTMLModElement`** interface provides special properties (beyond the regular methods and properties available through the HTMLElement interface they also have available to them by inheritance) for manipulating modification elements, that is del and ins.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLModElement)
		**/
		var HTMLModElement : {
			var prototype : js.html.ModElement;
		};
		/**
			The **`HTMLOListElement`** interface provides special properties (beyond those defined on the regular HTMLElement interface it also has available to it by inheritance) for manipulating ordered list elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLOListElement)
		**/
		var HTMLOListElement : {
			var prototype : js.html.OListElement;
		};
		/**
			The **`HTMLObjectElement`** interface provides special properties and methods (beyond those on the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of object element, representing external resources.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLObjectElement)
		**/
		var HTMLObjectElement : {
			var prototype : js.html.ObjectElement;
		};
		/**
			The **`HTMLOptGroupElement`** interface provides special properties and methods (beyond the regular HTMLElement object interface they also have available to them by inheritance) for manipulating the layout and presentation of optgroup elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLOptGroupElement)
		**/
		var HTMLOptGroupElement : {
			var prototype : js.html.OptGroupElement;
		};
		/**
			The **`HTMLOptionElement`** interface represents option elements and inherits all properties and methods of the HTMLElement interface.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLOptionElement)
		**/
		var HTMLOptionElement : {
			var prototype : js.html.OptionElement;
		};
		/**
			The **`HTMLOptionsCollection`** interface represents a collection of `<option>` HTML elements (in document order) and offers methods and properties for selecting from the list as well as optionally altering its items.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLOptionsCollection)
		**/
		var HTMLOptionsCollection : {
			var prototype : js.html.HTMLOptionsCollection;
		};
		/**
			The **`HTMLOutputElement`** interface provides properties and methods (beyond those inherited from HTMLElement) for manipulating the layout and presentation of output elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLOutputElement)
		**/
		var HTMLOutputElement : {
			var prototype : js.html.OutputElement;
		};
		/**
			The **`HTMLParagraphElement`** interface provides special properties (beyond those of the regular HTMLElement object interface it inherits) for manipulating p elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLParagraphElement)
		**/
		var HTMLParagraphElement : {
			var prototype : js.html.ParagraphElement;
		};
		/**
			The **`HTMLParamElement`** interface provides special properties (beyond those of the regular HTMLElement object interface it inherits) for manipulating param elements, representing a pair of a key and a value that acts as a parameter for an object element.
		**/
		var HTMLParamElement : {
			var prototype : js.html.ParamElement;
		};
		/**
			The **`HTMLPictureElement`** interface represents a picture HTML element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLPictureElement)
		**/
		var HTMLPictureElement : {
			var prototype : js.html.PictureElement;
		};
		/**
			The **`HTMLPreElement`** interface exposes specific properties and methods (beyond those of the HTMLElement interface it also has available to it by inheritance) for manipulating a block of preformatted text (pre).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLPreElement)
		**/
		var HTMLPreElement : {
			var prototype : js.html.PreElement;
		};
		/**
			The **`HTMLProgressElement`** interface provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of progress elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLProgressElement)
		**/
		var HTMLProgressElement : {
			var prototype : js.html.ProgressElement;
		};
		/**
			The **`HTMLQuoteElement`** interface provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating quoting elements, like blockquote and q, but not the cite element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLQuoteElement)
		**/
		var HTMLQuoteElement : {
			var prototype : js.html.QuoteElement;
		};
		/**
			HTML script elements expose the **`HTMLScriptElement`** interface, which provides special properties and methods for manipulating the behavior and execution of `<script>` elements (beyond the inherited HTMLElement interface).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement)
		**/
		var HTMLScriptElement : {
			var prototype : js.html.ScriptElement;
			/**
				The **`supports()`** static method of the HTMLScriptElement interface provides a simple and consistent method to feature-detect what types of scripts are supported by the user agent.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLScriptElement/supports_static)
			**/
			function supports(type:String):Bool;
		};
		/**
			The **`HTMLSelectElement`** interface represents a select HTML Element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLSelectElement)
		**/
		var HTMLSelectElement : {
			var prototype : js.html.SelectElement;
		};
		/**
			The **`HTMLSlotElement`** interface of the Shadow DOM API enables access to the name and assigned nodes of an HTML slot element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement)
		**/
		var HTMLSlotElement : {
			var prototype : js.html.SlotElement;
		};
		/**
			The **`HTMLSourceElement`** interface provides special properties (beyond the regular HTMLElement object interface it also has available to it by inheritance) for manipulating source elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLSourceElement)
		**/
		var HTMLSourceElement : {
			var prototype : js.html.SourceElement;
		};
		/**
			The **`HTMLSpanElement`** interface represents a span element and derives from the HTMLElement interface, but without implementing any additional properties or methods.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLSpanElement)
		**/
		var HTMLSpanElement : {
			var prototype : js.html.SpanElement;
		};
		/**
			The **`HTMLStyleElement`** interface represents a style element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLStyleElement)
		**/
		var HTMLStyleElement : {
			var prototype : js.html.StyleElement;
		};
		/**
			The **`HTMLTableCaptionElement`** interface provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating table caption elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTableCaptionElement)
		**/
		var HTMLTableCaptionElement : {
			var prototype : js.html.TableCaptionElement;
		};
		/**
			The **`HTMLTableCellElement`** interface provides special properties and methods (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of table cells, either header cells (th) or data cells (td), in an HTML document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTableCellElement)
		**/
		var HTMLTableCellElement : {
			var prototype : js.html.TableCellElement;
		};
		/**
			The **`HTMLTableColElement`** interface provides properties for manipulating single or grouped table column elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTableColElement)
		**/
		var HTMLTableColElement : {
			var prototype : js.html.TableColElement;
		};
		/**
			The **`HTMLTableElement`** interface provides special properties and methods (beyond the regular HTMLElement object interface it also has available to it by inheritance) for manipulating the layout and presentation of tables in an HTML document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTableElement)
		**/
		var HTMLTableElement : {
			var prototype : js.html.TableElement;
		};
		/**
			The **`HTMLTableRowElement`** interface provides special properties and methods (beyond the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of rows in an HTML table.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTableRowElement)
		**/
		var HTMLTableRowElement : {
			var prototype : js.html.TableRowElement;
		};
		/**
			The **`HTMLTableSectionElement`** interface provides special properties and methods (beyond the HTMLElement interface it also has available to it by inheritance) for manipulating the layout and presentation of sections, that is headers, footers and bodies (thead, tfoot, and tbody, respectively) in an HTML table.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTableSectionElement)
		**/
		var HTMLTableSectionElement : {
			var prototype : js.html.TableSectionElement;
		};
		/**
			The **`HTMLTemplateElement`** interface enables access to the contents of an HTML template element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTemplateElement)
		**/
		var HTMLTemplateElement : {
			var prototype : js.html.TemplateElement;
		};
		/**
			The **`HTMLTextAreaElement`** interface provides properties and methods for manipulating the layout and presentation of textarea elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTextAreaElement)
		**/
		var HTMLTextAreaElement : {
			var prototype : js.html.TextAreaElement;
		};
		/**
			The **`HTMLTimeElement`** interface provides special properties (beyond the regular HTMLElement interface it also has available to it by inheritance) for manipulating time elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTimeElement)
		**/
		var HTMLTimeElement : {
			var prototype : js.html.TimeElement;
		};
		/**
			The **`HTMLTitleElement`** interface is implemented by a document's title.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTitleElement)
		**/
		var HTMLTitleElement : {
			var prototype : js.html.TitleElement;
		};
		/**
			The **`HTMLTrackElement`** interface represents an HTML track element within the DOM.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTrackElement)
		**/
		var HTMLTrackElement : {
			var prototype : js.html.TrackElement;
			final NONE : Int;
			final LOADING : Int;
			final LOADED : Int;
			final ERROR : Int;
		};
		/**
			The **`HTMLUListElement`** interface provides special properties (beyond those defined on the regular HTMLElement interface it also has available to it by inheritance) for manipulating unordered list (ul) elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLUListElement)
		**/
		var HTMLUListElement : {
			var prototype : js.html.UListElement;
		};
		/**
			The **`HTMLUnknownElement`** interface represents an invalid HTML element and derives from the HTMLElement interface, but without implementing any additional properties or methods.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLUnknownElement)
		**/
		var HTMLUnknownElement : {
			var prototype : js.html.UnknownElement;
		};
		/**
			Implemented by the video element, the **`HTMLVideoElement`** interface provides special properties and methods for manipulating video objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement)
		**/
		var HTMLVideoElement : {
			var prototype : js.html.VideoElement;
		};
		/**
			The **`HashChangeEvent`** interface represents events that fire when the fragment identifier of the URL has changed.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HashChangeEvent)
		**/
		var HashChangeEvent : {
			var prototype : js.html.HashChangeEvent;
		};
		/**
			The **`Headers`** interface of the Fetch API allows you to perform various actions on HTTP request and response headers.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Headers)
		**/
		var Headers : {
			var prototype : js.html.Headers;
		};
		/**
			The **`Highlight`** interface of the CSS Custom Highlight API is used to represent a collection of Range instances to be styled using the API.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Highlight)
		**/
		var Highlight : {
			var prototype : js.html.Highlight;
		};
		/**
			The **`HighlightRegistry`** interface of the CSS Custom Highlight API is used to register Highlight objects to be styled using the API.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HighlightRegistry)
		**/
		var HighlightRegistry : {
			var prototype : js.html.HighlightRegistry;
		};
		/**
			The **`History`** interface of the History API allows manipulation of the browser _session history_, that is the pages visited in the tab or frame that the current page is loaded in.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/History)
		**/
		var History : {
			var prototype : js.html.History;
		};
		/**
			The **`IDBCursor`** interface of the IndexedDB API represents a cursor for traversing or iterating over multiple records in a database.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBCursor)
		**/
		var IDBCursor : {
			var prototype : js.html.idb.Cursor;
		};
		/**
			The **`IDBCursorWithValue`** interface of the IndexedDB API represents a cursor for traversing or iterating over multiple records in a database.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBCursorWithValue)
		**/
		var IDBCursorWithValue : {
			var prototype : js.html.idb.CursorWithValue;
		};
		/**
			The **`IDBDatabase`** interface of the IndexedDB API provides a connection to a database; you can use an `IDBDatabase` object to open a transaction on your database then create, manipulate, and delete objects (data) in that database.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBDatabase)
		**/
		var IDBDatabase : {
			var prototype : js.html.idb.Database;
		};
		/**
			The **`IDBFactory`** interface of the IndexedDB API lets applications asynchronously access the indexed databases.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBFactory)
		**/
		var IDBFactory : {
			var prototype : js.html.idb.Factory;
		};
		/**
			`IDBIndex` interface of the IndexedDB API provides asynchronous access to an index in a database.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBIndex)
		**/
		var IDBIndex : {
			var prototype : js.html.idb.Index;
		};
		/**
			The **`IDBKeyRange`** interface of the IndexedDB API represents a continuous interval over some data type that is used for keys.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBKeyRange)
		**/
		var IDBKeyRange : {
			var prototype : js.html.idb.KeyRange;
			/**
				The **`bound()`** static method of the IDBKeyRange interface creates a new key range with the specified upper and lower bounds.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBKeyRange/bound_static)
			**/
			function bound(lower:Dynamic, upper:Dynamic, ?lowerOpen:Bool, ?upperOpen:Bool):js.html.idb.KeyRange;
			/**
				The **`lowerBound()`** static method of the By default, it includes the lower endpoint value and is closed.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBKeyRange/lowerBound_static)
			**/
			function lowerBound(lower:Dynamic, ?open:Bool):js.html.idb.KeyRange;
			/**
				The **`only()`** static method of the IDBKeyRange interface creates a new key range containing a single value.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBKeyRange/only_static)
			**/
			function only(value:Dynamic):js.html.idb.KeyRange;
			/**
				The **`upperBound()`** static method of the it includes the upper endpoint value and is closed.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBKeyRange/upperBound_static)
			**/
			function upperBound(upper:Dynamic, ?open:Bool):js.html.idb.KeyRange;
		};
		/**
			The **`IDBObjectStore`** interface of the IndexedDB API represents an object store in a database.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBObjectStore)
		**/
		var IDBObjectStore : {
			var prototype : js.html.idb.ObjectStore;
		};
		/**
			The **`IDBOpenDBRequest`** interface of the IndexedDB API provides access to the results of requests to open or delete databases (performed using IDBFactory.open and IDBFactory.deleteDatabase), using specific event handler attributes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBOpenDBRequest)
		**/
		var IDBOpenDBRequest : {
			var prototype : js.html.idb.OpenDBRequest;
		};
		/**
			The **`IDBRequest`** interface of the IndexedDB API provides access to results of asynchronous requests to databases and database objects using event handler attributes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBRequest)
		**/
		var IDBRequest : {
			var prototype : js.html.IDBRequest_<Dynamic>;
		};
		/**
			The **`IDBTransaction`** interface of the IndexedDB API provides a static, asynchronous transaction on a database using event handler attributes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBTransaction)
		**/
		var IDBTransaction : {
			var prototype : js.html.idb.Transaction;
		};
		/**
			The **`IDBVersionChangeEvent`** interface of the IndexedDB API indicates that the version of the database has changed, as the result of an IDBOpenDBRequest.upgradeneeded_event event handler function.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IDBVersionChangeEvent)
		**/
		var IDBVersionChangeEvent : {
			var prototype : js.html.idb.VersionChangeEvent;
		};
		/**
			The **`IIRFilterNode`** interface of the Web Audio API is a AudioNode processor which implements a general **infinite impulse response** (IIR) filter; this type of filter can be used to implement tone control devices and graphic equalizers as well.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IIRFilterNode)
		**/
		var IIRFilterNode : {
			var prototype : js.html.audio.IIRFilterNode;
		};
		/**
			The `IdleDeadline` interface is used as the data type of the input parameter to idle callbacks established by calling Window.requestIdleCallback().
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IdleDeadline)
		**/
		var IdleDeadline : {
			var prototype : js.html.IdleDeadline;
		};
		/**
			The **`ImageBitmap`** interface represents a bitmap image which can be drawn to a canvas without undue latency.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageBitmap)
		**/
		var ImageBitmap : {
			var prototype : js.html.ImageBitmap;
		};
		/**
			The **`ImageBitmapRenderingContext`** interface is a canvas rendering context that provides the functionality to replace the canvas's contents with the given ImageBitmap.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageBitmapRenderingContext)
		**/
		var ImageBitmapRenderingContext : {
			var prototype : js.html.ImageBitmapRenderingContext;
		};
		/**
			The **`ImageCapture`** interface of the MediaStream Image Capture API provides methods to enable the capture of images or photos from a camera or other photographic device.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageCapture)
		**/
		var ImageCapture : {
			var prototype : js.html.ImageCapture;
		};
		/**
			The **`ImageData`** interface represents the underlying pixel data of an area of a canvas element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageData)
		**/
		var ImageData : {
			var prototype : js.html.ImageData;
		};
		/**
			The **`ImageDecoder`** interface of the WebCodecs API provides a way to unpack and decode encoded image data.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder)
		**/
		var ImageDecoder : {
			var prototype : js.html.ImageDecoder;
			/**
				The **`ImageDecoder.isTypeSupported()`** static method checks if a given MIME type can be decoded by the user agent.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageDecoder/isTypeSupported_static)
			**/
			function isTypeSupported(type:String):js.lib.Promise<Bool>;
		};
		/**
			The **`ImageTrack`** interface of the WebCodecs API represents an individual image track.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrack)
		**/
		var ImageTrack : {
			var prototype : js.html.ImageTrack;
		};
		/**
			The **`ImageTrackList`** interface of the WebCodecs API represents a list of image tracks.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ImageTrackList)
		**/
		var ImageTrackList : {
			var prototype : js.html.ImageTrackList;
		};
		/**
			The **`InputDeviceInfo`** interface of the Media Capture and Streams API gives access to the capabilities of the input device that it represents.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/InputDeviceInfo)
		**/
		var InputDeviceInfo : {
			var prototype : js.html.InputDeviceInfo;
		};
		/**
			The **`InputEvent`** interface represents an event notifying the user of editable content changes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/InputEvent)
		**/
		var InputEvent : {
			var prototype : js.html.InputEvent;
		};
		/**
			The **`IntersectionObserver`** interface of the Intersection Observer API provides a way to asynchronously observe changes in the intersection of a target element with an ancestor element or with a top-level document's viewport.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IntersectionObserver)
		**/
		var IntersectionObserver : {
			var prototype : js.html.IntersectionObserver;
		};
		/**
			The **`IntersectionObserverEntry`** interface of the Intersection Observer API describes the intersection between the target element and its root container at a specific moment of transition.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/IntersectionObserverEntry)
		**/
		var IntersectionObserverEntry : {
			var prototype : js.html.IntersectionObserverEntry;
		};
		/**
			**`KeyboardEvent`** objects describe a user interaction with the keyboard; each event describes a single interaction between the user and a key (or combination of a key with modifier keys) on the keyboard.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/KeyboardEvent)
		**/
		var KeyboardEvent : {
			var prototype : js.html.KeyboardEvent;
			final DOM_KEY_LOCATION_STANDARD : Int;
			final DOM_KEY_LOCATION_LEFT : Int;
			final DOM_KEY_LOCATION_RIGHT : Int;
			final DOM_KEY_LOCATION_NUMPAD : Int;
		};
		/**
			The **`KeyframeEffect`** interface of the Web Animations API lets us create sets of animatable properties and values, called **keyframes.** These can then be played using the Animation.Animation constructor.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/KeyframeEffect)
		**/
		var KeyframeEffect : {
			var prototype : js.html.KeyframeEffect;
		};
		/**
			The `LargestContentfulPaint` interface provides timing information about the largest image or text paint before user input on a web page.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/LargestContentfulPaint)
		**/
		var LargestContentfulPaint : {
			var prototype : js.html.LargestContentfulPaint;
		};
		/**
			The **`Location`** interface represents the location (URL) of the object it is linked to.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Location)
		**/
		var Location : {
			var prototype : js.html.Location;
		};
		/**
			The **`Lock`** interface of the Web Locks API provides the name and mode of a lock.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Lock)
		**/
		var Lock : {
			var prototype : js.html.Lock;
		};
		/**
			The **`LockManager`** interface of the Web Locks API provides methods for requesting a new Lock object and querying for an existing `Lock` object.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/LockManager)
		**/
		var LockManager : {
			var prototype : js.html.LockManager;
		};
		/**
			The **`MIDIAccess`** interface of the Web MIDI API provides methods for listing MIDI input and output devices, and obtaining access to those devices.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MIDIAccess)
		**/
		var MIDIAccess : {
			var prototype : js.html.midi.MIDIAccess;
		};
		/**
			The **`MIDIConnectionEvent`** interface of the Web MIDI API is the event passed to the MIDIAccess.statechange_event event of the MIDIAccess interface and the MIDIPort.statechange_event event of the MIDIPort interface.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MIDIConnectionEvent)
		**/
		var MIDIConnectionEvent : {
			var prototype : js.html.midi.MIDIConnectionEvent;
		};
		/**
			The **`MIDIInput`** interface of the Web MIDI API receives messages from a MIDI input port.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MIDIInput)
		**/
		var MIDIInput : {
			var prototype : js.html.midi.MIDIInput;
		};
		/**
			The **`MIDIInputMap`** read-only interface of the Web MIDI API provides the set of MIDI input ports that are currently available.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MIDIInputMap)
		**/
		var MIDIInputMap : {
			var prototype : js.html.midi.MIDIInputMap;
		};
		/**
			The **`MIDIMessageEvent`** interface of the Web MIDI API represents the event passed to the MIDIInput.midimessage_event event of the MIDIInput interface.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MIDIMessageEvent)
		**/
		var MIDIMessageEvent : {
			var prototype : js.html.midi.MIDIMessageEvent;
		};
		/**
			The **`MIDIOutput`** interface of the Web MIDI API provides methods to add messages to the queue of an output device, and to clear the queue of messages.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MIDIOutput)
		**/
		var MIDIOutput : {
			var prototype : js.html.midi.MIDIOutput;
		};
		/**
			The **`MIDIOutputMap`** read-only interface of the Web MIDI API provides the set of MIDI output ports that are currently available.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MIDIOutputMap)
		**/
		var MIDIOutputMap : {
			var prototype : js.html.midi.MIDIOutputMap;
		};
		/**
			The **`MIDIPort`** interface of the Web MIDI API represents a MIDI input or output port.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MIDIPort)
		**/
		var MIDIPort : {
			var prototype : js.html.midi.MIDIPort;
		};
		/**
			The **`MathMLElement`** interface represents any MathML element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MathMLElement)
		**/
		var MathMLElement : {
			var prototype : js.html.MathMLElement;
		};
		/**
			The **`MediaCapabilities`** interface of the Media Capabilities API provides information about the decoding abilities of the device, system and browser.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaCapabilities)
		**/
		var MediaCapabilities : {
			var prototype : js.html.MediaCapabilities;
		};
		/**
			The **`MediaDeviceInfo`** interface of the Media Capture and Streams API contains information that describes a single media input or output device.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaDeviceInfo)
		**/
		var MediaDeviceInfo : {
			var prototype : js.html.MediaDeviceInfo;
		};
		/**
			The **`MediaDevices`** interface of the Media Capture and Streams API provides access to connected media input devices like cameras and microphones, as well as screen sharing.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaDevices)
		**/
		var MediaDevices : {
			var prototype : js.html.MediaDevices;
		};
		/**
			The `MediaElementAudioSourceNode` interface represents an audio source consisting of an HTML audio or video element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaElementAudioSourceNode)
		**/
		var MediaElementAudioSourceNode : {
			var prototype : js.html.audio.MediaElementAudioSourceNode;
		};
		/**
			The **`MediaEncryptedEvent`** interface of the Encrypted Media Extensions API contains the information associated with an HTMLMediaElement/encrypted_event event sent to a HTMLMediaElement when some initialization data is encountered in the media.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaEncryptedEvent)
		**/
		var MediaEncryptedEvent : {
			var prototype : js.html.eme.MediaEncryptedEvent;
		};
		/**
			The **`MediaError`** interface represents an error which occurred while handling media in an HTML media element based on HTMLMediaElement, such as audio or video.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaError)
		**/
		var MediaError : {
			var prototype : js.html.MediaError;
			final MEDIA_ERR_ABORTED : Int;
			final MEDIA_ERR_NETWORK : Int;
			final MEDIA_ERR_DECODE : Int;
			final MEDIA_ERR_SRC_NOT_SUPPORTED : Int;
		};
		/**
			The **`MediaKeyMessageEvent`** interface of the Encrypted Media Extensions API contains the content and related data when the content decryption module generates a message for the session.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaKeyMessageEvent)
		**/
		var MediaKeyMessageEvent : {
			var prototype : js.html.eme.MediaKeyMessageEvent;
		};
		/**
			The **`MediaKeySession`** interface of the Encrypted Media Extensions API represents a context for message exchange with a content decryption module (CDM).
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaKeySession)
		**/
		var MediaKeySession : {
			var prototype : js.html.eme.MediaKeySession;
		};
		/**
			The **`MediaKeyStatusMap`** interface of the Encrypted Media Extensions API is a read-only map of media key statuses by key IDs.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaKeyStatusMap)
		**/
		var MediaKeyStatusMap : {
			var prototype : js.html.eme.MediaKeyStatusMap;
		};
		/**
			The **`MediaKeySystemAccess`** interface of the Encrypted Media Extensions API provides access to a Key System for decryption and/or a content protection provider.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaKeySystemAccess)
		**/
		var MediaKeySystemAccess : {
			var prototype : js.html.eme.MediaKeySystemAccess;
		};
		/**
			The **`MediaKeys`** interface of Encrypted Media Extensions API represents a set of keys that an associated HTMLMediaElement can use for decryption of media data during playback.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaKeys)
		**/
		var MediaKeys : {
			var prototype : js.html.eme.MediaKeys;
		};
		/**
			The **`MediaList`** interface represents the media queries of a stylesheet, e.g., those set using a link element's `media` attribute.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaList)
		**/
		var MediaList : {
			var prototype : js.html.MediaList;
		};
		/**
			The **`MediaMetadata`** interface of the Media Session API allows a web page to provide rich media metadata for display in a platform UI.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaMetadata)
		**/
		var MediaMetadata : {
			var prototype : js.html.MediaMetadata;
		};
		/**
			A **`MediaQueryList`** object stores information on a media query applied to a document, with support for both immediate and event-driven matching against the state of the document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaQueryList)
		**/
		var MediaQueryList : {
			var prototype : js.html.MediaQueryList;
		};
		/**
			The `MediaQueryListEvent` object stores information on the changes that have happened to a MediaQueryList object — instances are available as the event object on a function referenced by a MediaQueryList.change_event event.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaQueryListEvent)
		**/
		var MediaQueryListEvent : {
			var prototype : js.html.MediaQueryListEvent;
		};
		/**
			The **`MediaRecorder`** interface of the MediaStream Recording API provides functionality to easily record media.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaRecorder)
		**/
		var MediaRecorder : {
			var prototype : js.html.MediaRecorder;
			/**
				The **`isTypeSupported()`** static method of the MediaRecorder interface returns a Boolean which is `true` if the MIME media type specified is one the user agent should be able to successfully record.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaRecorder/isTypeSupported_static)
			**/
			function isTypeSupported(type:String):Bool;
		};
		/**
			The **`MediaSession`** interface of the Media Session API allows a web page to provide custom behaviors for standard media playback interactions, and to report metadata that can be sent by the user agent to the device or operating system for presentation in standardized user interface elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSession)
		**/
		var MediaSession : {
			var prototype : js.html.MediaSession;
		};
		/**
			The **`MediaSource`** interface of the Media Source Extensions API represents a source of media data for an HTMLMediaElement object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSource)
		**/
		var MediaSource : {
			var prototype : js.html.MediaSource;
			/**
				The **`canConstructInDedicatedWorker`** static property of the MediaSource interface returns `true` if `MediaSource` worker support is implemented, providing a low-latency feature detection mechanism.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSource/canConstructInDedicatedWorker_static)
			**/
			final canConstructInDedicatedWorker : Bool;
			/**
				The **`MediaSource.isTypeSupported()`** static method returns a boolean value which is `true` if the given MIME type and (optional) codec are _likely_ to be supported by the current user agent.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSource/isTypeSupported_static)
			**/
			function isTypeSupported(type:String):Bool;
		};
		/**
			The **`MediaSourceHandle`** interface of the Media Source Extensions API is a proxy for a MediaSource that can be transferred from a dedicated worker back to the main thread and attached to a media element via its HTMLMediaElement.srcObject property.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaSourceHandle)
		**/
		var MediaSourceHandle : {
			var prototype : js.html.MediaSourceHandle;
		};
		/**
			The **`MediaStream`** interface of the Media Capture and Streams API represents a stream of media content.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaStream)
		**/
		var MediaStream : {
			var prototype : js.html.MediaStream;
		};
		/**
			The `MediaStreamAudioDestinationNode` interface represents an audio destination consisting of a WebRTC MediaStream with a single `AudioMediaStreamTrack`, which can be used in a similar way to a `MediaStream` obtained from MediaDevices.getUserMedia.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioDestinationNode)
		**/
		var MediaStreamAudioDestinationNode : {
			var prototype : js.html.audio.MediaStreamAudioDestinationNode;
		};
		/**
			The **`MediaStreamAudioSourceNode`** interface is a type of AudioNode which operates as an audio source whose media is received from a MediaStream obtained using the WebRTC or Media Capture and Streams APIs.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaStreamAudioSourceNode)
		**/
		var MediaStreamAudioSourceNode : {
			var prototype : js.html.audio.MediaStreamAudioSourceNode;
		};
		/**
			The **`MediaStreamTrack`** interface of the Media Capture and Streams API represents a single media track within a stream; typically, these are audio or video tracks, but other track types may exist as well.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaStreamTrack)
		**/
		var MediaStreamTrack : {
			var prototype : js.html.MediaStreamTrack;
		};
		/**
			The **`MediaStreamTrackEvent`** interface of the Media Capture and Streams API represents events which indicate that a MediaStream has had tracks added to or removed from the stream through calls to Media Capture and Streams API methods.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MediaStreamTrackEvent)
		**/
		var MediaStreamTrackEvent : {
			var prototype : js.html.MediaStreamTrackEvent;
		};
		/**
			The **`MessageChannel`** interface of the Channel Messaging API allows us to create a new message channel and send data through it via its two MessagePort properties.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessageChannel)
			
			`MessageChannel` class is a global reference for `import { MessageChannel } from 'node:worker_threads'`
			https://nodejs.org/api/globals.html#messagechannel
		**/
		var MessageChannel : {
			var prototype : js.html.MessageChannel;
		};
		/**
			The **`MessageEvent`** interface represents a message received by a target object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessageEvent)
		**/
		var MessageEvent : {
			var prototype : js.html.MessageEvent_<Dynamic>;
		};
		/**
			The **`MessagePort`** interface of the Channel Messaging API represents one of the two ports of a MessageChannel, allowing messages to be sent from one port and listening out for them arriving at the other.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessagePort)
			
			`MessagePort` class is a global reference for `import { MessagePort } from 'node:worker_threads'`
			https://nodejs.org/api/globals.html#messageport
		**/
		var MessagePort : {
			var prototype : js.html.MessagePort;
		};
		/**
			The **`MimeType`** interface provides contains information about a MIME type associated with a particular plugin.
		**/
		var MimeType : {
			var prototype : js.html.MimeType;
		};
		/**
			The **`MimeTypeArray`** interface returns an array of MimeType instances, each of which contains information about a supported browser plugins.
		**/
		var MimeTypeArray : {
			var prototype : js.html.MimeTypeArray;
		};
		/**
			The **`MouseEvent`** interface represents events that occur due to the user interacting with a pointing device (such as a mouse).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MouseEvent)
		**/
		var MouseEvent : {
			var prototype : js.html.MouseEvent;
		};
		/**
			The **`MutationObserver`** interface provides the ability to watch for changes being made to the DOM tree.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MutationObserver)
		**/
		var MutationObserver : {
			var prototype : js.html.MutationObserver;
		};
		/**
			The **`MutationRecord`** is a read-only interface that represents an individual DOM mutation observed by a MutationObserver.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/MutationRecord)
		**/
		var MutationRecord : {
			var prototype : js.html.MutationRecord;
		};
		/**
			The **`NamedNodeMap`** interface represents a collection of Attr objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/NamedNodeMap)
		**/
		var NamedNodeMap : {
			var prototype : js.html.NamedNodeMap;
		};
		/**
			The **`NavigationActivation`** interface of the Navigation API represents a recent cross-document navigation.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationActivation)
		**/
		var NavigationActivation : {
			var prototype : js.html.NavigationActivation;
		};
		/**
			The **`NavigationHistoryEntry`** interface of the Navigation API represents a single navigation history entry.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationHistoryEntry)
		**/
		var NavigationHistoryEntry : {
			var prototype : js.html.NavigationHistoryEntry;
		};
		/**
			The **`NavigationPreloadManager`** interface of the Service Worker API provides methods for managing the preloading of resources in parallel with service worker bootup.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigationPreloadManager)
		**/
		var NavigationPreloadManager : {
			var prototype : js.html.NavigationPreloadManager;
		};
		/**
			The **`Navigator`** interface represents the state and the identity of the user agent.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Navigator)
		**/
		var Navigator : {
			var prototype : js.html.Navigator;
		};
		/**
			The **`NavigatorLogin`** interface of the Federated Credential Management (FedCM) API defines login functionality for federated identity providers (IdPs).
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/NavigatorLogin)
		**/
		var NavigatorLogin : {
			var prototype : js.html.NavigatorLogin;
		};
		/**
			The DOM **`Node`** interface is an abstract base class upon which many other DOM API objects are based, thus letting those object types to be used similarly and often interchangeably.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node)
		**/
		var Node : {
			var prototype : js.html.Node;
			/**
				node is an element.
			**/
			final ELEMENT_NODE : Int;
			final ATTRIBUTE_NODE : Int;
			/**
				node is a Text node.
			**/
			final TEXT_NODE : Int;
			/**
				node is a CDATASection node.
			**/
			final CDATA_SECTION_NODE : Int;
			final ENTITY_REFERENCE_NODE : Int;
			final ENTITY_NODE : Int;
			/**
				node is a ProcessingInstruction node.
			**/
			final PROCESSING_INSTRUCTION_NODE : Int;
			/**
				node is a Comment node.
			**/
			final COMMENT_NODE : Int;
			/**
				node is a document.
			**/
			final DOCUMENT_NODE : Int;
			/**
				node is a doctype.
			**/
			final DOCUMENT_TYPE_NODE : Int;
			/**
				node is a DocumentFragment node.
			**/
			final DOCUMENT_FRAGMENT_NODE : Int;
			final NOTATION_NODE : Int;
			/**
				Set when node and other are not in the same tree.
			**/
			final DOCUMENT_POSITION_DISCONNECTED : Int;
			/**
				Set when other is preceding node.
			**/
			final DOCUMENT_POSITION_PRECEDING : Int;
			/**
				Set when other is following node.
			**/
			final DOCUMENT_POSITION_FOLLOWING : Int;
			/**
				Set when other is an ancestor of node.
			**/
			final DOCUMENT_POSITION_CONTAINS : Int;
			/**
				Set when other is a descendant of node.
			**/
			final DOCUMENT_POSITION_CONTAINED_BY : Int;
			final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC : Int;
		};
		/**
			The **`NodeIterator`** interface represents an iterator to traverse nodes of a DOM subtree in document order.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/NodeIterator)
		**/
		var NodeIterator : {
			var prototype : js.html.NodeIterator;
		};
		/**
			**`NodeList`** objects are collections of nodes, usually returned by properties such as Node.childNodes and methods such as document.querySelectorAll().
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/NodeList)
		**/
		var NodeList : {
			var prototype : js.html.NodeList;
		};
		/**
			The **`Notification`** interface of the Notifications API is used to configure and display desktop notifications to the user.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Notification)
		**/
		var Notification : {
			var prototype : js.html.Notification;
			/**
				The **`permission`** read-only static property of the Notification interface indicates the current permission granted by the user for the current origin to display web notifications.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/Notification/permission_static)
			**/
			final permission : js.html.NotificationPermission;
			/**
				The **`requestPermission()`** static method of the Notification interface requests permission from the user for the current origin to display notifications.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/Notification/requestPermission_static)
			**/
			function requestPermission(?deprecatedCallback:js.html.NotificationPermissionCallback):js.lib.Promise<js.html.NotificationPermission>;
		};
		/**
			The Web Audio API `OfflineAudioCompletionEvent` interface represents events that occur when the processing of an OfflineAudioContext is terminated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/OfflineAudioCompletionEvent)
		**/
		var OfflineAudioCompletionEvent : {
			var prototype : js.html.audio.OfflineAudioCompletionEvent;
		};
		/**
			The `OfflineAudioContext` interface is an AudioContext interface representing an audio-processing graph built from linked together AudioNodes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/OfflineAudioContext)
		**/
		var OfflineAudioContext : {
			var prototype : js.html.audio.OfflineAudioContext;
		};
		/**
			When using the canvas element or the Canvas API, rendering, animation, and user interaction usually happen on the main execution thread of a web application.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvas)
		**/
		var OffscreenCanvas : {
			var prototype : js.html.OffscreenCanvas;
		};
		/**
			The **`OffscreenCanvasRenderingContext2D`** interface is a CanvasRenderingContext2D rendering context for drawing to the bitmap of an `OffscreenCanvas` object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/OffscreenCanvasRenderingContext2D)
		**/
		var OffscreenCanvasRenderingContext2D : {
			var prototype : js.html.OffscreenCanvasRenderingContext2D;
		};
		/**
			The **`OscillatorNode`** interface represents a periodic waveform, such as a sine wave.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/OscillatorNode)
		**/
		var OscillatorNode : {
			var prototype : js.html.audio.OscillatorNode;
		};
		/**
			The **`OverconstrainedError`** interface of the Media Capture and Streams API indicates that the set of desired capabilities for the current MediaStreamTrack cannot currently be met.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/OverconstrainedError)
		**/
		var OverconstrainedError : {
			var prototype : js.html.OverconstrainedError;
		};
		/**
			The **`PageRevealEvent`** event object is made available inside handler functions for the Window.pagereveal_event event.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PageRevealEvent)
		**/
		var PageRevealEvent : {
			var prototype : js.html.PageRevealEvent;
		};
		/**
			The **`PageSwapEvent`** event object is made available inside handler functions for the Window.pageswap_event event.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PageSwapEvent)
		**/
		var PageSwapEvent : {
			var prototype : js.html.PageSwapEvent;
		};
		/**
			The **`PageTransitionEvent`** event object is available inside handler functions for the `pageshow` and `pagehide` events, fired when a document is being loaded or unloaded.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PageTransitionEvent)
		**/
		var PageTransitionEvent : {
			var prototype : js.html.PageTransitionEvent;
		};
		/**
			The `PannerNode` interface defines an audio-processing object that represents the location, direction, and behavior of an audio source signal in a simulated physical space.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PannerNode)
		**/
		var PannerNode : {
			var prototype : js.html.audio.PannerNode;
		};
		/**
			The **`Path2D`** interface of the Canvas 2D API is used to declare a path that can then be used on a CanvasRenderingContext2D object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Path2D)
		**/
		var Path2D : {
			var prototype : js.html.Path2D;
		};
		/**
			The **`ContactAddress`** interface of the Contact Picker API represents a physical address.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ContactAddress)
		**/
		var PaymentAddress : {
			var prototype : js.html.PaymentAddress;
		};
		/**
			The **`PaymentMethodChangeEvent`** interface of the Payment Request API describes the PaymentRequest/paymentmethodchange_event event which is fired by some payment handlers when the user switches payment instruments (e.g., a user selects a 'store' card to make a purchase while using Apple Pay).
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentMethodChangeEvent)
		**/
		var PaymentMethodChangeEvent : {
			var prototype : js.html.PaymentMethodChangeEvent;
		};
		/**
			The Payment Request API's **`PaymentRequest`** interface is the primary access point into the API, and lets web content and apps accept payments from the end user on behalf of the operator of the site or the publisher of the app.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentRequest)
		**/
		var PaymentRequest : {
			var prototype : js.html.PaymentRequest;
		};
		/**
			The **`PaymentRequestUpdateEvent`** interface is used for events sent to a PaymentRequest instance when changes are made to shipping-related information for a pending PaymentRequest.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentRequestUpdateEvent)
		**/
		var PaymentRequestUpdateEvent : {
			var prototype : js.html.PaymentRequestUpdateEvent;
		};
		/**
			The **`PaymentResponse`** interface of the Payment Request API is returned after a user selects a payment method and approves a payment request.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PaymentResponse)
		**/
		var PaymentResponse : {
			var prototype : js.html.PaymentResponse;
		};
		/**
			The **`Performance`** interface provides access to performance-related information for the current page.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Performance)
		**/
		var Performance : {
			var prototype : js.html.Performance;
		};
		/**
			The **`PerformanceEntry`** object encapsulates a single performance metric that is part of the browser's performance timeline.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEntry)
			
			`PerformanceEntry` is a global reference for `import { PerformanceEntry } from 'node:node:perf_hooks'`
		**/
		var PerformanceEntry : {
			var prototype : js.html.PerformanceEntry;
		};
		/**
			The `PerformanceEventTiming` interface of the Event Timing API provides insights into the latency of certain event types triggered by user interaction.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceEventTiming)
		**/
		var PerformanceEventTiming : {
			var prototype : js.html.PerformanceEventTiming;
		};
		/**
			**`PerformanceMark`** is an interface for PerformanceEntry objects with an PerformanceEntry.entryType of `'mark'`.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceMark)
			
			`PerformanceMark` is a global reference for `import { PerformanceMark } from 'node:node:perf_hooks'`
		**/
		var PerformanceMark : {
			var prototype : js.html.PerformanceMark;
		};
		/**
			**`PerformanceMeasure`** is an _abstract_ interface for PerformanceEntry objects with an PerformanceEntry.entryType of `'measure'`.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceMeasure)
			
			`PerformanceMeasure` is a global reference for `import { PerformanceMeasure } from 'node:node:perf_hooks'`
		**/
		var PerformanceMeasure : {
			var prototype : js.html.PerformanceMeasure;
		};
		/**
			The legacy **`PerformanceNavigation`** interface represents information about how the navigation to the current document was done.
		**/
		var PerformanceNavigation : {
			var prototype : js.html.PerformanceNavigation;
			final TYPE_NAVIGATE : Int;
			final TYPE_RELOAD : Int;
			final TYPE_BACK_FORWARD : Int;
			final TYPE_RESERVED : Int;
		};
		/**
			The **`PerformanceNavigationTiming`** interface provides methods and properties to store and retrieve metrics regarding the browser's document navigation events.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceNavigationTiming)
		**/
		var PerformanceNavigationTiming : {
			var prototype : js.html.PerformanceNavigationTiming;
		};
		/**
			The **`PerformanceObserver`** interface is used to observe performance measurement events and be notified of new PerformanceEntry as they are recorded in the browser's _performance timeline_.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserver)
			
			`PerformanceObserver` is a global reference for `import { PerformanceObserver } from 'node:node:perf_hooks'`
		**/
		var PerformanceObserver : {
			var prototype : js.html.PerformanceObserver;
			/**
				The static **`supportedEntryTypes`** read-only property of the PerformanceObserver interface returns an array of the PerformanceEntry.entryType values supported by the user agent.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserver/supportedEntryTypes_static)
			**/
			final supportedEntryTypes : haxe.ds.ReadOnlyArray<String>;
		};
		/**
			The **`PerformanceObserverEntryList`** interface is a list of PerformanceEntry that were explicitly observed via the PerformanceObserver.observe method.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceObserverEntryList)
			
			`PerformanceObserverEntryList` is a global reference for `import { PerformanceObserverEntryList } from 'node:node:perf_hooks'`
		**/
		var PerformanceObserverEntryList : {
			var prototype : js.html.PerformanceObserverEntryList;
		};
		/**
			The **`PerformancePaintTiming`** interface provides timing information about 'paint' (also called 'render') operations during web page construction.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformancePaintTiming)
		**/
		var PerformancePaintTiming : {
			var prototype : js.html.PerformancePaintTiming;
		};
		/**
			The **`PerformanceResourceTiming`** interface enables retrieval and analysis of detailed network timing data regarding the loading of an application's resources.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceResourceTiming)
			
			`PerformanceResourceTiming` is a global reference for `import { PerformanceResourceTiming } from 'node:node:perf_hooks'`
		**/
		var PerformanceResourceTiming : {
			var prototype : js.html.PerformanceResourceTiming;
		};
		/**
			The **`PerformanceServerTiming`** interface surfaces server metrics that are sent with the response in the Server-Timing HTTP header.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PerformanceServerTiming)
		**/
		var PerformanceServerTiming : {
			var prototype : js.html.PerformanceServerTiming;
		};
		/**
			The **`PerformanceTiming`** interface is a legacy interface kept for backwards compatibility and contains properties that offer performance timing information for various events which occur during the loading and use of the current page.
		**/
		var PerformanceTiming : {
			var prototype : js.html.PerformanceTiming;
		};
		/**
			The **`PeriodicWave`** interface defines a periodic waveform that can be used to shape the output of an OscillatorNode.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PeriodicWave)
		**/
		var PeriodicWave : {
			var prototype : js.html.audio.PeriodicWave;
		};
		/**
			The **`PermissionStatus`** interface of the Permissions API provides the state of an object and an event handler for monitoring changes to said state.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PermissionStatus)
		**/
		var PermissionStatus : {
			var prototype : js.html.PermissionStatus;
		};
		/**
			The **`Permissions`** interface of the Permissions API provides the core Permission API functionality, such as methods for querying and revoking permissions - Permissions.query - : Returns the user permission status for a given API.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Permissions)
		**/
		var Permissions : {
			var prototype : js.html.Permissions;
		};
		/**
			The **`PictureInPictureEvent`** interface represents picture-in-picture-related events, including HTMLVideoElement/enterpictureinpicture_event, HTMLVideoElement/leavepictureinpicture_event and PictureInPictureWindow/resize_event.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PictureInPictureEvent)
		**/
		var PictureInPictureEvent : {
			var prototype : js.html.PictureInPictureEvent;
		};
		/**
			The **`PictureInPictureWindow`** interface represents an object able to programmatically obtain the **`width`** and **`height`** and **`resize event`** of the floating video window.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PictureInPictureWindow)
		**/
		var PictureInPictureWindow : {
			var prototype : js.html.PictureInPictureWindow;
		};
		/**
			The `Plugin` interface provides information about a browser plugin.
		**/
		var Plugin : {
			var prototype : js.html.Plugin;
		};
		/**
			The `PluginArray` interface is used to store a list of Plugin objects; it's returned by the Navigator.plugins property.
		**/
		var PluginArray : {
			var prototype : js.html.PluginArray;
		};
		/**
			The **`PointerEvent`** interface represents the state of a DOM event produced by a pointer such as the geometry of the contact point, the device type that generated the event, the amount of pressure that was applied on the contact surface, etc.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PointerEvent)
		**/
		var PointerEvent : {
			var prototype : js.html.PointerEvent;
		};
		/**
			**`PopStateEvent`** is an interface for the Window/popstate_event event.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PopStateEvent)
		**/
		var PopStateEvent : {
			var prototype : js.html.PopStateEvent;
		};
		/**
			The **`ProcessingInstruction`** interface represents a processing instruction; that is, a Node which embeds an instruction targeting a specific application but that can be ignored by any other applications which don't recognize the instruction.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ProcessingInstruction)
		**/
		var ProcessingInstruction : {
			var prototype : js.html.ProcessingInstruction;
		};
		/**
			The **`ProgressEvent`** interface represents events that measure the progress of an underlying process, like an HTTP request (e.g., an `XMLHttpRequest`, or the loading of the underlying resource of an img, audio, video, style or link).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ProgressEvent)
		**/
		var ProgressEvent : {
			var prototype : js.html.ProgressEvent_<js.html.EventTarget>;
		};
		/**
			The **`PromiseRejectionEvent`** interface represents events which are sent to the global script context when JavaScript Promises are rejected.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PromiseRejectionEvent)
		**/
		var PromiseRejectionEvent : {
			var prototype : js.html.PromiseRejectionEvent;
		};
		/**
			The **`PublicKeyCredential`** interface provides information about a public key / private key pair, which is a credential for logging in to a service using an un-phishable and data-breach resistant asymmetric key pair instead of a password.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential)
		**/
		var PublicKeyCredential : {
			var prototype : js.html.PublicKeyCredential;
			/**
				The **`getClientCapabilities()`** static method of the PublicKeyCredential interface returns a Promise that resolves with an object that can be used to check whether or not particular WebAuthn client capabilities and extensions are supported.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/getClientCapabilities_static)
			**/
			function getClientCapabilities():js.lib.Promise<haxe.DynamicAccess<Bool>>;
			/**
				The **`isConditionalMediationAvailable()`** static method of the PublicKeyCredential interface returns a Promise which resolves to `true` if conditional mediation is available.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/isConditionalMediationAvailable_static)
			**/
			function isConditionalMediationAvailable():js.lib.Promise<Bool>;
			/**
				The **`isUserVerifyingPlatformAuthenticatorAvailable()`** static method of the PublicKeyCredential interface returns a Promise which resolves to `true` if a user-verifying platform authenticator is present.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/isUserVerifyingPlatformAuthenticatorAvailable_static)
			**/
			function isUserVerifyingPlatformAuthenticatorAvailable():js.lib.Promise<Bool>;
			/**
				The **`parseCreationOptionsFromJSON()`** static method of the PublicKeyCredential interface creates a PublicKeyCredentialCreationOptions object from a JSON representation of its properties.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/parseCreationOptionsFromJSON_static)
			**/
			function parseCreationOptionsFromJSON(options:js.html.PublicKeyCredentialCreationOptionsJSON):js.html.PublicKeyCredentialCreationOptions;
			/**
				The **`parseRequestOptionsFromJSON()`** static method of the PublicKeyCredential interface converts a JSON type representation into a PublicKeyCredentialRequestOptions instance.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/PublicKeyCredential/parseRequestOptionsFromJSON_static)
			**/
			function parseRequestOptionsFromJSON(options:js.html.PublicKeyCredentialRequestOptionsJSON):js.html.PublicKeyCredentialRequestOptions;
		};
		/**
			The **`PushManager`** interface of the Push API provides a way to receive notifications from third-party servers as well as request URLs for push notifications.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PushManager)
		**/
		var PushManager : {
			var prototype : js.html.push.PushManager;
			/**
				The **`supportedContentEncodings`** read-only static property of the PushManager interface returns an array of supported content codings that can be used to encrypt the payload of a push message.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/PushManager/supportedContentEncodings_static)
			**/
			final supportedContentEncodings : haxe.ds.ReadOnlyArray<String>;
		};
		/**
			The `PushSubscription` interface of the Push API provides a subscription's URL endpoint along with the public key and secrets that should be used for encrypting push messages to this subscription.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PushSubscription)
		**/
		var PushSubscription : {
			var prototype : js.html.push.PushSubscription;
		};
		/**
			The **`PushSubscriptionOptions`** interface of the Push API represents the options associated with a push subscription.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/PushSubscriptionOptions)
		**/
		var PushSubscriptionOptions : {
			var prototype : js.html.push.PushSubscriptionOptions;
		};
		/**
			The **`RTCCertificate`** interface of the WebRTC API provides an object representing a certificate that an RTCPeerConnection uses to authenticate.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCCertificate)
		**/
		var RTCCertificate : {
			var prototype : js.html.rtc.Certificate;
		};
		/**
			The **`RTCDTMFSender`** interface provides a mechanism for transmitting DTMF codes on a WebRTC RTCPeerConnection.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDTMFSender)
		**/
		var RTCDTMFSender : {
			var prototype : js.html.rtc.DTMFSender;
		};
		/**
			The **`RTCDTMFToneChangeEvent`** interface represents events sent to indicate that DTMF tones have started or finished playing.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDTMFToneChangeEvent)
		**/
		var RTCDTMFToneChangeEvent : {
			var prototype : js.html.rtc.DTMFToneChangeEvent;
		};
		/**
			The **`RTCDataChannel`** interface represents a network channel which can be used for bidirectional peer-to-peer transfers of arbitrary data.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDataChannel)
		**/
		var RTCDataChannel : {
			var prototype : js.html.rtc.DataChannel;
		};
		/**
			The **`RTCDataChannelEvent`** interface represents an event related to a specific RTCDataChannel.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDataChannelEvent)
		**/
		var RTCDataChannelEvent : {
			var prototype : js.html.rtc.DataChannelEvent;
		};
		/**
			The **`RTCDtlsTransport`** interface provides access to information about the Datagram Transport Layer Security (**DTLS**) transport over which a RTCPeerConnection's RTP and RTCP packets are sent and received by its RTCRtpSender and RTCRtpReceiver objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCDtlsTransport)
		**/
		var RTCDtlsTransport : {
			var prototype : js.html.RTCDtlsTransport;
		};
		/**
			The **`RTCEncodedAudioFrame`** of the WebRTC API represents an encoded audio frame in the WebRTC receiver or sender pipeline, which may be modified using a WebRTC Encoded Transform.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCEncodedAudioFrame)
		**/
		var RTCEncodedAudioFrame : {
			var prototype : js.html.RTCEncodedAudioFrame;
		};
		/**
			The **`RTCEncodedVideoFrame`** of the WebRTC API represents an encoded video frame in the WebRTC receiver or sender pipeline, which may be modified using a WebRTC Encoded Transform.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCEncodedVideoFrame)
		**/
		var RTCEncodedVideoFrame : {
			var prototype : js.html.RTCEncodedVideoFrame;
		};
		/**
			The **`RTCError`** interface describes an error which has occurred while handling WebRTC operations.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCError)
		**/
		var RTCError : {
			var prototype : js.html.RTCError;
		};
		/**
			The WebRTC API's **`RTCErrorEvent`** interface represents an error sent to a WebRTC object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCErrorEvent)
		**/
		var RTCErrorEvent : {
			var prototype : js.html.RTCErrorEvent;
		};
		/**
			The **`RTCIceCandidate`** interface—part of the WebRTC API—represents a candidate Interactive Connectivity Establishment (ICE) configuration which may be used to establish an RTCPeerConnection.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceCandidate)
		**/
		var RTCIceCandidate : {
			var prototype : js.html.rtc.IceCandidate;
		};
		/**
			The **`RTCIceTransport`** interface provides access to information about the ICE transport layer over which the data is being sent and received.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCIceTransport)
		**/
		var RTCIceTransport : {
			var prototype : js.html.RTCIceTransport;
		};
		/**
			The **`RTCPeerConnection`** interface represents a WebRTC connection between the local computer and a remote peer.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection)
		**/
		var RTCPeerConnection : {
			var prototype : js.html.rtc.PeerConnection;
			/**
				The **`generateCertificate()`** static function of the RTCPeerConnection interface creates an X.509 certificate and corresponding private key, returning a promise that resolves with the new RTCCertificate once it's generated.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection/generateCertificate_static)
			**/
			function generateCertificate(keygenAlgorithm:js.html.AlgorithmIdentifier):js.lib.Promise<js.html.rtc.Certificate>;
		};
		/**
			The **`RTCPeerConnectionIceErrorEvent`** interface—based upon the Event interface—provides details pertaining to an ICE error announced by sending an RTCPeerConnection.icecandidateerror_event event to the RTCPeerConnection object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCPeerConnectionIceErrorEvent)
		**/
		var RTCPeerConnectionIceErrorEvent : {
			var prototype : js.html.RTCPeerConnectionIceErrorEvent;
		};
		/**
			The **`RTCPeerConnectionIceEvent`** interface represents events that occur in relation to ICE candidates with the target, usually an RTCPeerConnection.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCPeerConnectionIceEvent)
		**/
		var RTCPeerConnectionIceEvent : {
			var prototype : js.html.rtc.PeerConnectionIceEvent;
		};
		/**
			The **`RTCRtpReceiver`** interface of the WebRTC API manages the reception and decoding of data for a MediaStreamTrack on an RTCPeerConnection.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCRtpReceiver)
		**/
		var RTCRtpReceiver : {
			var prototype : js.html.rtc.RtpReceiver;
			/**
				The _static method_ **`RTCRtpReceiver.getCapabilities()`** returns an object describing the codec and header extension capabilities supported by RTCRtpReceiver objects on the current device.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCRtpReceiver/getCapabilities_static)
			**/
			function getCapabilities(kind:String):Null<js.html.RTCRtpCapabilities>;
		};
		/**
			The **`RTCRtpScriptTransform`** interface of the WebRTC API is used to insert a WebRTC Encoded Transform (a TransformStream running in a worker thread) into the WebRTC sender and receiver pipelines.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCRtpScriptTransform)
		**/
		var RTCRtpScriptTransform : {
			var prototype : js.html.RTCRtpScriptTransform;
		};
		/**
			The **`RTCRtpSender`** interface provides the ability to control and obtain details about how a particular MediaStreamTrack is encoded and sent to a remote peer.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCRtpSender)
		**/
		var RTCRtpSender : {
			var prototype : js.html.rtc.RtpSender;
			/**
				The _static method_ **`RTCRtpSender.getCapabilities()`** returns an object describing the codec and header extension capabilities supported by the RTCRtpSender.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCRtpSender/getCapabilities_static)
			**/
			function getCapabilities(kind:String):Null<js.html.RTCRtpCapabilities>;
		};
		/**
			The WebRTC interface **`RTCRtpTransceiver`** describes a permanent pairing of an RTCRtpSender and an RTCRtpReceiver, along with some shared state.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCRtpTransceiver)
		**/
		var RTCRtpTransceiver : {
			var prototype : js.html.rtc.RtpTransceiver;
		};
		/**
			The **`RTCSctpTransport`** interface provides information which describes a Stream Control Transmission Protocol (**SCTP**) transport.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCSctpTransport)
		**/
		var RTCSctpTransport : {
			var prototype : js.html.RTCSctpTransport;
		};
		/**
			The **`RTCSessionDescription`** interface describes one end of a connection—or potential connection—and how it's configured.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCSessionDescription)
		**/
		var RTCSessionDescription : {
			var prototype : js.html.rtc.SessionDescription;
		};
		/**
			The **`RTCStatsReport`** interface of the WebRTC API provides a statistics report for a RTCPeerConnection, RTCRtpSender, or RTCRtpReceiver.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCStatsReport)
		**/
		var RTCStatsReport : {
			var prototype : js.html.rtc.StatsReport;
		};
		/**
			The WebRTC API interface **`RTCTrackEvent`** represents the RTCPeerConnection.track_event event, which is sent when a new MediaStreamTrack is added to an RTCRtpReceiver which is part of the RTCPeerConnection.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCTrackEvent)
		**/
		var RTCTrackEvent : {
			var prototype : js.html.rtc.TrackEvent;
		};
		/**
			The **`RadioNodeList`** interface represents a collection of elements in a form returned by a call to HTMLFormControlsCollection.namedItem().
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RadioNodeList)
		**/
		var RadioNodeList : {
			var prototype : js.html.RadioNodeList;
		};
		/**
			The **`Range`** interface represents a fragment of a document that can contain nodes and parts of text nodes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Range)
		**/
		var Range : {
			var prototype : js.html.Range;
			final START_TO_START : Int;
			final START_TO_END : Int;
			final END_TO_END : Int;
			final END_TO_START : Int;
		};
		/**
			The **`ReadableByteStreamController`** interface of the Streams API represents a controller for a readable byte stream.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableByteStreamController)
		**/
		var ReadableByteStreamController : {
			var prototype : js.html.ReadableByteStreamController;
		};
		/**
			The `ReadableStream` interface of the Streams API represents a readable stream of byte data.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStream)
		**/
		var ReadableStream : {
			var prototype : js.html.ReadableStream<Dynamic>;
		};
		/**
			The `ReadableStreamBYOBReader` interface of the Streams API defines a reader for a ReadableStream that supports zero-copy reading from an underlying byte source.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBReader)
		**/
		var ReadableStreamBYOBReader : {
			var prototype : js.html.ReadableStreamBYOBReader;
		};
		/**
			The **`ReadableStreamBYOBRequest`** interface of the Streams API represents a 'pull request' for data from an underlying source that will made as a zero-copy transfer to a consumer (bypassing the stream's internal queues).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamBYOBRequest)
		**/
		var ReadableStreamBYOBRequest : {
			var prototype : js.html.ReadableStreamBYOBRequest;
		};
		/**
			The **`ReadableStreamDefaultController`** interface of the Streams API represents a controller allowing control of a ReadableStream's state and internal queue.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultController)
		**/
		var ReadableStreamDefaultController : {
			var prototype : js.html.ReadableStreamDefaultController<Dynamic>;
		};
		/**
			The **`ReadableStreamDefaultReader`** interface of the Streams API represents a default reader that can be used to read stream data supplied from a network (such as a fetch request).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReadableStreamDefaultReader)
		**/
		var ReadableStreamDefaultReader : {
			var prototype : js.html.ReadableStreamDefaultReader<Dynamic>;
		};
		/**
			The **`RemotePlayback`** interface of the Remote Playback API allows the page to detect availability of remote playback devices, then connect to and control playing on these devices.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/RemotePlayback)
		**/
		var RemotePlayback : {
			var prototype : js.html.RemotePlayback;
		};
		/**
			The `Report` interface of the Reporting API represents a single report.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Report)
		**/
		var Report : {
			var prototype : js.html.Report;
		};
		/**
			The **`ReportBody`** interface of the Reporting API represents the body of a report.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReportBody)
		**/
		var ReportBody : {
			var prototype : js.html.ReportBody;
		};
		/**
			The `ReportingObserver` interface of the Reporting API allows you to collect and access reports.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ReportingObserver)
		**/
		var ReportingObserver : {
			var prototype : js.html.ReportingObserver;
		};
		/**
			The **`Request`** interface of the Fetch API represents a resource request.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Request)
		**/
		var Request : {
			var prototype : js.html.Request;
		};
		/**
			The **`ResizeObserver`** interface reports changes to the dimensions of an Element's content or border box, or the bounding box of an SVGElement.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserver)
		**/
		var ResizeObserver : {
			var prototype : js.html.ResizeObserver;
		};
		/**
			The **`ResizeObserverEntry`** interface represents the object passed to the ResizeObserver.ResizeObserver constructor's callback function, which allows you to access the new dimensions of the Element or SVGElement being observed.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverEntry)
		**/
		var ResizeObserverEntry : {
			var prototype : js.html.ResizeObserverEntry;
		};
		/**
			The **`ResizeObserverSize`** interface of the Resize Observer API is used by the ResizeObserverEntry interface to access the box sizing properties of the element being observed.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ResizeObserverSize)
		**/
		var ResizeObserverSize : {
			var prototype : js.html.ResizeObserverSize;
		};
		/**
			The **`Response`** interface of the Fetch API represents the response to a request.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response)
		**/
		var Response : {
			var prototype : js.html.Response;
			/**
				The **`error()`** static method of the Response interface returns a new `Response` object associated with a network error.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/error_static)
			**/
			function error():js.html.Response;
			/**
				The **`json()`** static method of the Response interface returns a `Response` that contains the provided JSON data as body, and a Content-Type header which is set to `application/json`.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/json_static)
			**/
			function json(data:Dynamic, ?init:js.html.ResponseInit):js.html.Response;
			/**
				The **`redirect()`** static method of the Response interface returns a `Response` resulting in a redirect to the specified URL.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/Response/redirect_static)
			**/
			function redirect(url:ts.AnyOf2<String, js.html.URL>, ?status:Float):js.html.Response;
		};
		/**
			The **`SVGAElement`** interface provides access to the properties of an a element, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAElement)
		**/
		var SVGAElement : {
			var prototype : js.html.svg.AElement;
		};
		/**
			The `SVGAngle` interface is used to represent a value that can be an &lt;angle&gt; or &lt;number&gt; value.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAngle)
		**/
		var SVGAngle : {
			var prototype : js.html.svg.Angle;
			final SVG_ANGLETYPE_UNKNOWN : Int;
			final SVG_ANGLETYPE_UNSPECIFIED : Int;
			final SVG_ANGLETYPE_DEG : Int;
			final SVG_ANGLETYPE_RAD : Int;
			final SVG_ANGLETYPE_GRAD : Int;
		};
		/**
			The **`SVGAnimateElement`** interface corresponds to the animate element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimateElement)
		**/
		var SVGAnimateElement : {
			var prototype : js.html.svg.AnimateElement;
		};
		/**
			The **`SVGAnimateMotionElement`** interface corresponds to the animateMotion element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimateMotionElement)
		**/
		var SVGAnimateMotionElement : {
			var prototype : js.html.svg.AnimateMotionElement;
		};
		/**
			The `SVGAnimateTransformElement` interface corresponds to the animateTransform element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimateTransformElement)
		**/
		var SVGAnimateTransformElement : {
			var prototype : js.html.svg.AnimateTransformElement;
		};
		/**
			The **`SVGAnimatedAngle`** interface is used for attributes of basic type \<angle> which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedAngle)
		**/
		var SVGAnimatedAngle : {
			var prototype : js.html.svg.AnimatedAngle;
		};
		/**
			The **`SVGAnimatedBoolean`** interface is used for attributes of type boolean which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedBoolean)
		**/
		var SVGAnimatedBoolean : {
			var prototype : js.html.svg.AnimatedBoolean;
		};
		/**
			The **`SVGAnimatedEnumeration`** interface describes attribute values which are constants from a particular enumeration and which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedEnumeration)
		**/
		var SVGAnimatedEnumeration : {
			var prototype : js.html.svg.AnimatedEnumeration;
		};
		/**
			The **`SVGAnimatedInteger`** interface is used for attributes of basic type \<integer> which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedInteger)
		**/
		var SVGAnimatedInteger : {
			var prototype : js.html.svg.AnimatedInteger;
		};
		/**
			The **`SVGAnimatedLength`** interface represents attributes of type \<length> which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLength)
		**/
		var SVGAnimatedLength : {
			var prototype : js.html.svg.AnimatedLength;
		};
		/**
			The **`SVGAnimatedLengthList`** interface is used for attributes of type SVGLengthList which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedLengthList)
		**/
		var SVGAnimatedLengthList : {
			var prototype : js.html.svg.AnimatedLengthList;
		};
		/**
			The **`SVGAnimatedNumber`** interface represents attributes of type \<number> which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedNumber)
		**/
		var SVGAnimatedNumber : {
			var prototype : js.html.svg.AnimatedNumber;
		};
		/**
			The **`SVGAnimatedNumberList`** interface represents a list of attributes of type \<number> which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedNumberList)
		**/
		var SVGAnimatedNumberList : {
			var prototype : js.html.svg.AnimatedNumberList;
		};
		/**
			The **`SVGAnimatedPreserveAspectRatio`** interface represents attributes of type SVGPreserveAspectRatio which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedPreserveAspectRatio)
		**/
		var SVGAnimatedPreserveAspectRatio : {
			var prototype : js.html.svg.AnimatedPreserveAspectRatio;
		};
		/**
			The **`SVGAnimatedRect`** interface represents an SVGRect attribute that can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedRect)
		**/
		var SVGAnimatedRect : {
			var prototype : js.html.svg.AnimatedRect;
		};
		/**
			The **`SVGAnimatedString`** interface represents string attributes which can be animated from each SVG declaration.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedString)
		**/
		var SVGAnimatedString : {
			var prototype : js.html.svg.AnimatedString;
		};
		/**
			The **`SVGAnimatedTransformList`** interface represents attributes which take a list of numbers and which can be animated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimatedTransformList)
		**/
		var SVGAnimatedTransformList : {
			var prototype : js.html.svg.AnimatedTransformList;
		};
		/**
			The **`SVGAnimationElement`** interface is the base interface for all of the animation element interfaces: SVGAnimateElement, SVGSetElement, SVGAnimateColorElement, SVGAnimateMotionElement and SVGAnimateTransformElement.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGAnimationElement)
		**/
		var SVGAnimationElement : {
			var prototype : js.html.svg.AnimationElement;
		};
		/**
			The **`SVGCircleElement`** interface is an interface for the circle element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGCircleElement)
		**/
		var SVGCircleElement : {
			var prototype : js.html.svg.CircleElement;
		};
		/**
			The **`SVGClipPathElement`** interface provides access to the properties of clipPath elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGClipPathElement)
		**/
		var SVGClipPathElement : {
			var prototype : js.html.svg.ClipPathElement;
		};
		/**
			The **`SVGComponentTransferFunctionElement`** interface represents a base interface used by the component transfer function interfaces.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGComponentTransferFunctionElement)
		**/
		var SVGComponentTransferFunctionElement : {
			var prototype : js.html.svg.ComponentTransferFunctionElement;
			final SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN : Int;
			final SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY : Int;
			final SVG_FECOMPONENTTRANSFER_TYPE_TABLE : Int;
			final SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE : Int;
			final SVG_FECOMPONENTTRANSFER_TYPE_LINEAR : Int;
			final SVG_FECOMPONENTTRANSFER_TYPE_GAMMA : Int;
		};
		/**
			The **`SVGDefsElement`** interface corresponds to the defs element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGDefsElement)
		**/
		var SVGDefsElement : {
			var prototype : js.html.svg.DefsElement;
		};
		/**
			The **`SVGDescElement`** interface corresponds to the desc element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGDescElement)
		**/
		var SVGDescElement : {
			var prototype : js.html.svg.DescElement;
		};
		/**
			All of the SVG DOM interfaces that correspond directly to elements in the SVG language derive from the `SVGElement` interface.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGElement)
		**/
		var SVGElement : {
			var prototype : js.html.svg.Element;
		};
		/**
			The **`SVGEllipseElement`** interface provides access to the properties of ellipse elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGEllipseElement)
		**/
		var SVGEllipseElement : {
			var prototype : js.html.svg.EllipseElement;
		};
		/**
			The **`SVGFEBlendElement`** interface corresponds to the feBlend element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEBlendElement)
		**/
		var SVGFEBlendElement : {
			var prototype : js.html.svg.FEBlendElement;
			final SVG_FEBLEND_MODE_UNKNOWN : Int;
			final SVG_FEBLEND_MODE_NORMAL : Int;
			final SVG_FEBLEND_MODE_MULTIPLY : Int;
			final SVG_FEBLEND_MODE_SCREEN : Int;
			final SVG_FEBLEND_MODE_DARKEN : Int;
			final SVG_FEBLEND_MODE_LIGHTEN : Int;
			final SVG_FEBLEND_MODE_OVERLAY : Int;
			final SVG_FEBLEND_MODE_COLOR_DODGE : Int;
			final SVG_FEBLEND_MODE_COLOR_BURN : Int;
			final SVG_FEBLEND_MODE_HARD_LIGHT : Int;
			final SVG_FEBLEND_MODE_SOFT_LIGHT : Int;
			final SVG_FEBLEND_MODE_DIFFERENCE : Int;
			final SVG_FEBLEND_MODE_EXCLUSION : Int;
			final SVG_FEBLEND_MODE_HUE : Int;
			final SVG_FEBLEND_MODE_SATURATION : Int;
			final SVG_FEBLEND_MODE_COLOR : Int;
			final SVG_FEBLEND_MODE_LUMINOSITY : Int;
		};
		/**
			The **`SVGFEColorMatrixElement`** interface corresponds to the feColorMatrix element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEColorMatrixElement)
		**/
		var SVGFEColorMatrixElement : {
			var prototype : js.html.svg.FEColorMatrixElement;
			final SVG_FECOLORMATRIX_TYPE_UNKNOWN : Int;
			final SVG_FECOLORMATRIX_TYPE_MATRIX : Int;
			final SVG_FECOLORMATRIX_TYPE_SATURATE : Int;
			final SVG_FECOLORMATRIX_TYPE_HUEROTATE : Int;
			final SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA : Int;
		};
		/**
			The **`SVGFEComponentTransferElement`** interface corresponds to the feComponentTransfer element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEComponentTransferElement)
		**/
		var SVGFEComponentTransferElement : {
			var prototype : js.html.svg.FEComponentTransferElement;
		};
		/**
			The **`SVGFECompositeElement`** interface corresponds to the feComposite element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFECompositeElement)
		**/
		var SVGFECompositeElement : {
			var prototype : js.html.svg.FECompositeElement;
			final SVG_FECOMPOSITE_OPERATOR_UNKNOWN : Int;
			final SVG_FECOMPOSITE_OPERATOR_OVER : Int;
			final SVG_FECOMPOSITE_OPERATOR_IN : Int;
			final SVG_FECOMPOSITE_OPERATOR_OUT : Int;
			final SVG_FECOMPOSITE_OPERATOR_ATOP : Int;
			final SVG_FECOMPOSITE_OPERATOR_XOR : Int;
			final SVG_FECOMPOSITE_OPERATOR_ARITHMETIC : Int;
		};
		/**
			The **`SVGFEConvolveMatrixElement`** interface corresponds to the feConvolveMatrix element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEConvolveMatrixElement)
		**/
		var SVGFEConvolveMatrixElement : {
			var prototype : js.html.svg.FEConvolveMatrixElement;
			final SVG_EDGEMODE_UNKNOWN : Int;
			final SVG_EDGEMODE_DUPLICATE : Int;
			final SVG_EDGEMODE_WRAP : Int;
			final SVG_EDGEMODE_NONE : Int;
		};
		/**
			The **`SVGFEDiffuseLightingElement`** interface corresponds to the feDiffuseLighting element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEDiffuseLightingElement)
		**/
		var SVGFEDiffuseLightingElement : {
			var prototype : js.html.svg.FEDiffuseLightingElement;
		};
		/**
			The **`SVGFEDisplacementMapElement`** interface corresponds to the feDisplacementMap element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEDisplacementMapElement)
		**/
		var SVGFEDisplacementMapElement : {
			var prototype : js.html.svg.FEDisplacementMapElement;
			final SVG_CHANNEL_UNKNOWN : Int;
			final SVG_CHANNEL_R : Int;
			final SVG_CHANNEL_G : Int;
			final SVG_CHANNEL_B : Int;
			final SVG_CHANNEL_A : Int;
		};
		/**
			The **`SVGFEDistantLightElement`** interface corresponds to the feDistantLight element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEDistantLightElement)
		**/
		var SVGFEDistantLightElement : {
			var prototype : js.html.svg.FEDistantLightElement;
		};
		/**
			The **`SVGFEDropShadowElement`** interface corresponds to the feDropShadow element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEDropShadowElement)
		**/
		var SVGFEDropShadowElement : {
			var prototype : js.html.svg.FEDropShadowElement;
		};
		/**
			The **`SVGFEFloodElement`** interface corresponds to the feFlood element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEFloodElement)
		**/
		var SVGFEFloodElement : {
			var prototype : js.html.svg.FEFloodElement;
		};
		/**
			The **`SVGFEFuncAElement`** interface corresponds to the feFuncA element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEFuncAElement)
		**/
		var SVGFEFuncAElement : {
			var prototype : js.html.svg.FEFuncAElement;
		};
		/**
			The **`SVGFEFuncBElement`** interface corresponds to the feFuncB element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEFuncBElement)
		**/
		var SVGFEFuncBElement : {
			var prototype : js.html.svg.FEFuncBElement;
		};
		/**
			The **`SVGFEFuncGElement`** interface corresponds to the feFuncG element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEFuncGElement)
		**/
		var SVGFEFuncGElement : {
			var prototype : js.html.svg.FEFuncGElement;
		};
		/**
			The **`SVGFEFuncRElement`** interface corresponds to the feFuncR element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEFuncRElement)
		**/
		var SVGFEFuncRElement : {
			var prototype : js.html.svg.FEFuncRElement;
		};
		/**
			The **`SVGFEGaussianBlurElement`** interface corresponds to the feGaussianBlur element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEGaussianBlurElement)
		**/
		var SVGFEGaussianBlurElement : {
			var prototype : js.html.svg.FEGaussianBlurElement;
		};
		/**
			The **`SVGFEImageElement`** interface corresponds to the feImage element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEImageElement)
		**/
		var SVGFEImageElement : {
			var prototype : js.html.svg.FEImageElement;
		};
		/**
			The **`SVGFEMergeElement`** interface corresponds to the feMerge element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEMergeElement)
		**/
		var SVGFEMergeElement : {
			var prototype : js.html.svg.FEMergeElement;
		};
		/**
			The **`SVGFEMergeNodeElement`** interface corresponds to the feMergeNode element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEMergeNodeElement)
		**/
		var SVGFEMergeNodeElement : {
			var prototype : js.html.svg.FEMergeNodeElement;
		};
		/**
			The **`SVGFEMorphologyElement`** interface corresponds to the feMorphology element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEMorphologyElement)
		**/
		var SVGFEMorphologyElement : {
			var prototype : js.html.svg.FEMorphologyElement;
			final SVG_MORPHOLOGY_OPERATOR_UNKNOWN : Int;
			final SVG_MORPHOLOGY_OPERATOR_ERODE : Int;
			final SVG_MORPHOLOGY_OPERATOR_DILATE : Int;
		};
		/**
			The **`SVGFEOffsetElement`** interface corresponds to the feOffset element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEOffsetElement)
		**/
		var SVGFEOffsetElement : {
			var prototype : js.html.svg.FEOffsetElement;
		};
		/**
			The **`SVGFEPointLightElement`** interface corresponds to the fePointLight element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFEPointLightElement)
		**/
		var SVGFEPointLightElement : {
			var prototype : js.html.svg.FEPointLightElement;
		};
		/**
			The **`SVGFESpecularLightingElement`** interface corresponds to the feSpecularLighting element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFESpecularLightingElement)
		**/
		var SVGFESpecularLightingElement : {
			var prototype : js.html.svg.FESpecularLightingElement;
		};
		/**
			The **`SVGFESpotLightElement`** interface corresponds to the feSpotLight element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFESpotLightElement)
		**/
		var SVGFESpotLightElement : {
			var prototype : js.html.svg.FESpotLightElement;
		};
		/**
			The **`SVGFETileElement`** interface corresponds to the feTile element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFETileElement)
		**/
		var SVGFETileElement : {
			var prototype : js.html.svg.FETileElement;
		};
		/**
			The **`SVGFETurbulenceElement`** interface corresponds to the feTurbulence element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFETurbulenceElement)
		**/
		var SVGFETurbulenceElement : {
			var prototype : js.html.svg.FETurbulenceElement;
			final SVG_TURBULENCE_TYPE_UNKNOWN : Int;
			final SVG_TURBULENCE_TYPE_FRACTALNOISE : Int;
			final SVG_TURBULENCE_TYPE_TURBULENCE : Int;
			final SVG_STITCHTYPE_UNKNOWN : Int;
			final SVG_STITCHTYPE_STITCH : Int;
			final SVG_STITCHTYPE_NOSTITCH : Int;
		};
		/**
			The **`SVGFilterElement`** interface provides access to the properties of filter elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGFilterElement)
		**/
		var SVGFilterElement : {
			var prototype : js.html.svg.FilterElement;
		};
		/**
			The **`SVGForeignObjectElement`** interface provides access to the properties of foreignObject elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGForeignObjectElement)
		**/
		var SVGForeignObjectElement : {
			var prototype : js.html.svg.ForeignObjectElement;
		};
		/**
			The **`SVGGElement`** interface corresponds to the g element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGGElement)
		**/
		var SVGGElement : {
			var prototype : js.html.svg.GElement;
		};
		/**
			The `SVGGeometryElement` interface represents SVG elements whose rendering is defined by geometry with an equivalent path, and which can be filled and stroked.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGGeometryElement)
		**/
		var SVGGeometryElement : {
			var prototype : js.html.svg.GeometryElement;
		};
		/**
			The **`SVGGradient`** interface is a base interface used by SVGLinearGradientElement and SVGRadialGradientElement.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGGradientElement)
		**/
		var SVGGradientElement : {
			var prototype : js.html.svg.GradientElement;
			final SVG_SPREADMETHOD_UNKNOWN : Int;
			final SVG_SPREADMETHOD_PAD : Int;
			final SVG_SPREADMETHOD_REFLECT : Int;
			final SVG_SPREADMETHOD_REPEAT : Int;
		};
		/**
			The **`SVGGraphicsElement`** interface represents SVG elements whose primary purpose is to directly render graphics into a group.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGGraphicsElement)
		**/
		var SVGGraphicsElement : {
			var prototype : js.html.svg.GraphicsElement;
		};
		/**
			The **`SVGImageElement`** interface corresponds to the image element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGImageElement)
		**/
		var SVGImageElement : {
			var prototype : js.html.svg.ImageElement;
		};
		/**
			The **`SVGLength`** interface correspond to the \<length> basic data type.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGLength)
		**/
		var SVGLength : {
			var prototype : js.html.svg.Length;
			final SVG_LENGTHTYPE_UNKNOWN : Int;
			final SVG_LENGTHTYPE_NUMBER : Int;
			final SVG_LENGTHTYPE_PERCENTAGE : Int;
			final SVG_LENGTHTYPE_EMS : Int;
			final SVG_LENGTHTYPE_EXS : Int;
			final SVG_LENGTHTYPE_PX : Int;
			final SVG_LENGTHTYPE_CM : Int;
			final SVG_LENGTHTYPE_MM : Int;
			final SVG_LENGTHTYPE_IN : Int;
			final SVG_LENGTHTYPE_PT : Int;
			final SVG_LENGTHTYPE_PC : Int;
		};
		/**
			The **`SVGLengthList`** interface defines a list of SVGLength objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGLengthList)
		**/
		var SVGLengthList : {
			var prototype : js.html.svg.LengthList;
		};
		/**
			The **`SVGLineElement`** interface provides access to the properties of line elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGLineElement)
		**/
		var SVGLineElement : {
			var prototype : js.html.svg.LineElement;
		};
		/**
			The **`SVGLinearGradientElement`** interface corresponds to the linearGradient element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGLinearGradientElement)
		**/
		var SVGLinearGradientElement : {
			var prototype : js.html.svg.LinearGradientElement;
		};
		/**
			The **`SVGMPathElement`** interface corresponds to the mpath element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGMPathElement)
		**/
		var SVGMPathElement : {
			var prototype : js.html.svg.MPathElement;
		};
		/**
			The **`SVGMarkerElement`** interface provides access to the properties of marker elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGMarkerElement)
		**/
		var SVGMarkerElement : {
			var prototype : js.html.svg.MarkerElement;
			final SVG_MARKERUNITS_UNKNOWN : Int;
			final SVG_MARKERUNITS_USERSPACEONUSE : Int;
			final SVG_MARKERUNITS_STROKEWIDTH : Int;
			final SVG_MARKER_ORIENT_UNKNOWN : Int;
			final SVG_MARKER_ORIENT_AUTO : Int;
			final SVG_MARKER_ORIENT_ANGLE : Int;
		};
		/**
			The **`SVGMaskElement`** interface provides access to the properties of mask elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGMaskElement)
		**/
		var SVGMaskElement : {
			var prototype : js.html.svg.MaskElement;
		};
		/**
			The **`SVGMetadataElement`** interface corresponds to the metadata element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGMetadataElement)
		**/
		var SVGMetadataElement : {
			var prototype : js.html.svg.MetadataElement;
		};
		/**
			The **`SVGNumber`** interface corresponds to the &lt;number&gt; basic data type.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGNumber)
		**/
		var SVGNumber : {
			var prototype : js.html.svg.Number;
		};
		/**
			The **`SVGNumberList`** interface defines a list of numbers.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGNumberList)
		**/
		var SVGNumberList : {
			var prototype : js.html.svg.NumberList;
		};
		/**
			The **`SVGPathElement`** interface corresponds to the path element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGPathElement)
		**/
		var SVGPathElement : {
			var prototype : js.html.svg.PathElement;
		};
		/**
			The **`SVGPatternElement`** interface corresponds to the pattern element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGPatternElement)
		**/
		var SVGPatternElement : {
			var prototype : js.html.svg.PatternElement;
		};
		/**
			The **`SVGPointList`** interface represents a list of DOMPoint objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGPointList)
		**/
		var SVGPointList : {
			var prototype : js.html.svg.PointList;
		};
		/**
			The **`SVGPolygonElement`** interface provides access to the properties of polygon elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGPolygonElement)
		**/
		var SVGPolygonElement : {
			var prototype : js.html.svg.PolygonElement;
		};
		/**
			The **`SVGPolylineElement`** interface provides access to the properties of polyline elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGPolylineElement)
		**/
		var SVGPolylineElement : {
			var prototype : js.html.svg.PolylineElement;
		};
		/**
			The **`SVGPreserveAspectRatio`** interface corresponds to the preserveAspectRatio attribute.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGPreserveAspectRatio)
		**/
		var SVGPreserveAspectRatio : {
			var prototype : js.html.svg.PreserveAspectRatio;
			final SVG_PRESERVEASPECTRATIO_UNKNOWN : Int;
			final SVG_PRESERVEASPECTRATIO_NONE : Int;
			final SVG_PRESERVEASPECTRATIO_XMINYMIN : Int;
			final SVG_PRESERVEASPECTRATIO_XMIDYMIN : Int;
			final SVG_PRESERVEASPECTRATIO_XMAXYMIN : Int;
			final SVG_PRESERVEASPECTRATIO_XMINYMID : Int;
			final SVG_PRESERVEASPECTRATIO_XMIDYMID : Int;
			final SVG_PRESERVEASPECTRATIO_XMAXYMID : Int;
			final SVG_PRESERVEASPECTRATIO_XMINYMAX : Int;
			final SVG_PRESERVEASPECTRATIO_XMIDYMAX : Int;
			final SVG_PRESERVEASPECTRATIO_XMAXYMAX : Int;
			final SVG_MEETORSLICE_UNKNOWN : Int;
			final SVG_MEETORSLICE_MEET : Int;
			final SVG_MEETORSLICE_SLICE : Int;
		};
		/**
			The **`SVGRadialGradientElement`** interface corresponds to the RadialGradient element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGRadialGradientElement)
		**/
		var SVGRadialGradientElement : {
			var prototype : js.html.svg.RadialGradientElement;
		};
		/**
			The `SVGRectElement` interface provides access to the properties of rect elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGRectElement)
		**/
		var SVGRectElement : {
			var prototype : js.html.svg.RectElement;
		};
		/**
			The **`SVGSVGElement`** interface provides access to the properties of svg elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGSVGElement)
		**/
		var SVGSVGElement : {
			var prototype : js.html.svg.SVGElement;
		};
		/**
			The **`SVGScriptElement`** interface corresponds to the SVG script element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGScriptElement)
		**/
		var SVGScriptElement : {
			var prototype : js.html.svg.ScriptElement;
		};
		/**
			The **`SVGSetElement`** interface corresponds to the set element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGSetElement)
		**/
		var SVGSetElement : {
			var prototype : js.html.svg.SetElement;
		};
		/**
			The **`SVGStopElement`** interface corresponds to the stop element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGStopElement)
		**/
		var SVGStopElement : {
			var prototype : js.html.svg.StopElement;
		};
		/**
			The **`SVGStringList`** interface defines a list of strings.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGStringList)
		**/
		var SVGStringList : {
			var prototype : js.html.svg.StringList;
		};
		/**
			The **`SVGStyleElement`** interface corresponds to the SVG style element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGStyleElement)
		**/
		var SVGStyleElement : {
			var prototype : js.html.svg.StyleElement;
		};
		/**
			The **`SVGSwitchElement`** interface corresponds to the switch element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGSwitchElement)
		**/
		var SVGSwitchElement : {
			var prototype : js.html.svg.SwitchElement;
		};
		/**
			The **`SVGSymbolElement`** interface corresponds to the symbol element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGSymbolElement)
		**/
		var SVGSymbolElement : {
			var prototype : js.html.svg.SymbolElement;
		};
		/**
			The **`SVGTSpanElement`** interface represents a tspan element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGTSpanElement)
		**/
		var SVGTSpanElement : {
			var prototype : js.html.svg.TSpanElement;
		};
		/**
			The **`SVGTextContentElement`** interface is implemented by elements that support rendering child text content.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGTextContentElement)
		**/
		var SVGTextContentElement : {
			var prototype : js.html.svg.TextContentElement;
			final LENGTHADJUST_UNKNOWN : Int;
			final LENGTHADJUST_SPACING : Int;
			final LENGTHADJUST_SPACINGANDGLYPHS : Int;
		};
		/**
			The **`SVGTextElement`** interface corresponds to the text elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGTextElement)
		**/
		var SVGTextElement : {
			var prototype : js.html.svg.TextElement;
		};
		/**
			The **`SVGTextPathElement`** interface corresponds to the textPath element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGTextPathElement)
		**/
		var SVGTextPathElement : {
			var prototype : js.html.svg.TextPathElement;
			final TEXTPATH_METHODTYPE_UNKNOWN : Int;
			final TEXTPATH_METHODTYPE_ALIGN : Int;
			final TEXTPATH_METHODTYPE_STRETCH : Int;
			final TEXTPATH_SPACINGTYPE_UNKNOWN : Int;
			final TEXTPATH_SPACINGTYPE_AUTO : Int;
			final TEXTPATH_SPACINGTYPE_EXACT : Int;
		};
		/**
			The **`SVGTextPositioningElement`** interface is implemented by elements that support attributes that position individual text glyphs.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGTextPositioningElement)
		**/
		var SVGTextPositioningElement : {
			var prototype : js.html.svg.TextPositioningElement;
		};
		/**
			The **`SVGTitleElement`** interface corresponds to the title element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGTitleElement)
		**/
		var SVGTitleElement : {
			var prototype : js.html.svg.TitleElement;
		};
		/**
			The **`SVGTransform`** interface reflects one of the component transformations within an SVGTransformList; thus, an `SVGTransform` object corresponds to a single component (e.g., `scale(…)` or `matrix(…)`) within a transform attribute.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGTransform)
		**/
		var SVGTransform : {
			var prototype : js.html.svg.Transform;
			final SVG_TRANSFORM_UNKNOWN : Int;
			final SVG_TRANSFORM_MATRIX : Int;
			final SVG_TRANSFORM_TRANSLATE : Int;
			final SVG_TRANSFORM_SCALE : Int;
			final SVG_TRANSFORM_ROTATE : Int;
			final SVG_TRANSFORM_SKEWX : Int;
			final SVG_TRANSFORM_SKEWY : Int;
		};
		/**
			The **`SVGTransformList`** interface defines a list of SVGTransform objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGTransformList)
		**/
		var SVGTransformList : {
			var prototype : js.html.svg.TransformList;
		};
		/**
			The **`SVGUnitTypes`** interface defines a commonly used set of constants used for reflecting gradientUnits, patternContentUnits and other similar attributes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGUnitTypes)
		**/
		var SVGUnitTypes : {
			var prototype : js.html.svg.UnitTypes;
			final SVG_UNIT_TYPE_UNKNOWN : Int;
			final SVG_UNIT_TYPE_USERSPACEONUSE : Int;
			final SVG_UNIT_TYPE_OBJECTBOUNDINGBOX : Int;
		};
		/**
			The **`SVGUseElement`** interface corresponds to the use element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGUseElement)
		**/
		var SVGUseElement : {
			var prototype : js.html.svg.UseElement;
		};
		/**
			The **`SVGViewElement`** interface provides access to the properties of view elements, as well as methods to manipulate them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SVGViewElement)
		**/
		var SVGViewElement : {
			var prototype : js.html.svg.ViewElement;
		};
		/**
			The `Screen` interface represents a screen, usually the one on which the current window is being rendered, and is obtained using window.screen.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Screen)
		**/
		var Screen : {
			var prototype : js.html.Screen;
		};
		/**
			The **`ScreenOrientation`** interface of the Screen Orientation API provides information about the current orientation of the document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ScreenOrientation)
		**/
		var ScreenOrientation : {
			var prototype : js.html.ScreenOrientation;
		};
		/**
			The `ScriptProcessorNode` interface allows the generation, processing, or analyzing of audio using JavaScript.
		**/
		var ScriptProcessorNode : {
			var prototype : js.html.audio.ScriptProcessorNode;
		};
		/**
			The **`SecurityPolicyViolationEvent`** interface inherits from Event, and represents the event object of a `securitypolicyviolation` event sent on an Element/securitypolicyviolation_event, Document/securitypolicyviolation_event, or WorkerGlobalScope/securitypolicyviolation_event when its Content Security Policy (CSP) is violated.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SecurityPolicyViolationEvent)
		**/
		var SecurityPolicyViolationEvent : {
			var prototype : js.html.SecurityPolicyViolationEvent;
		};
		/**
			A **`Selection`** object represents the range of text selected by the user or the current position of the caret.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Selection)
		**/
		var Selection : {
			var prototype : js.html.Selection;
		};
		/**
			The **`ServiceWorker`** interface of the Service Worker API provides a reference to a service worker.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ServiceWorker)
		**/
		var ServiceWorker : {
			var prototype : js.html.ServiceWorker;
		};
		/**
			The **`ServiceWorkerContainer`** interface of the Service Worker API provides an object representing the service worker as an overall unit in the network ecosystem, including facilities to register, unregister and update service workers, and access the state of service workers and their registrations.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ServiceWorkerContainer)
		**/
		var ServiceWorkerContainer : {
			var prototype : js.html.ServiceWorkerContainer;
		};
		/**
			The **`ServiceWorkerRegistration`** interface of the Service Worker API represents the service worker registration.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ServiceWorkerRegistration)
		**/
		var ServiceWorkerRegistration : {
			var prototype : js.html.ServiceWorkerRegistration;
		};
		/**
			The **`ShadowRoot`** interface of the Shadow DOM API is the root node of a DOM subtree that is rendered separately from a document's main DOM tree.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ShadowRoot)
		**/
		var ShadowRoot : {
			var prototype : js.html.ShadowRoot;
		};
		/**
			The **`SharedWorker`** interface represents a specific kind of worker that can be _accessed_ from several browsing contexts, such as several windows, iframes or even workers.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SharedWorker)
		**/
		var SharedWorker : {
			var prototype : js.html.SharedWorker;
		};
		/**
			The **`SourceBuffer`** interface represents a chunk of media to be passed into an HTMLMediaElement and played, via a MediaSource object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SourceBuffer)
		**/
		var SourceBuffer : {
			var prototype : js.html.SourceBuffer;
		};
		/**
			The **`SourceBufferList`** interface represents a simple container list for multiple SourceBuffer objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SourceBufferList)
		**/
		var SourceBufferList : {
			var prototype : js.html.SourceBufferList;
		};
		/**
			The **`SpeechRecognitionAlternative`** interface of the Web Speech API represents a single word that has been recognized by the speech recognition service.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionAlternative)
		**/
		var SpeechRecognitionAlternative : {
			var prototype : js.html.SpeechRecognitionAlternative;
		};
		/**
			The **`SpeechRecognitionResult`** interface of the Web Speech API represents a single recognition match, which may contain multiple SpeechRecognitionAlternative objects.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionResult)
		**/
		var SpeechRecognitionResult : {
			var prototype : js.html.SpeechRecognitionResult;
		};
		/**
			The **`SpeechRecognitionResultList`** interface of the Web Speech API represents a list of SpeechRecognitionResult objects, or a single one if results are being captured in SpeechRecognition.continuous mode.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SpeechRecognitionResultList)
		**/
		var SpeechRecognitionResultList : {
			var prototype : js.html.SpeechRecognitionResultList;
		};
		/**
			The **`SpeechSynthesis`** interface of the Web Speech API is the controller interface for the speech service; this can be used to retrieve information about the synthesis voices available on the device, start and pause speech, and other commands besides.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SpeechSynthesis)
		**/
		var SpeechSynthesis : {
			var prototype : js.html.SpeechSynthesis;
		};
		/**
			The **`SpeechSynthesisErrorEvent`** interface of the Web Speech API contains information about any errors that occur while processing SpeechSynthesisUtterance objects in the speech service.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisErrorEvent)
		**/
		var SpeechSynthesisErrorEvent : {
			var prototype : js.html.SpeechSynthesisErrorEvent;
		};
		/**
			The **`SpeechSynthesisEvent`** interface of the Web Speech API contains information about the current state of SpeechSynthesisUtterance objects that have been processed in the speech service.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisEvent)
		**/
		var SpeechSynthesisEvent : {
			var prototype : js.html.SpeechSynthesisEvent;
		};
		/**
			The **`SpeechSynthesisUtterance`** interface of the Web Speech API represents a speech request.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisUtterance)
		**/
		var SpeechSynthesisUtterance : {
			var prototype : js.html.SpeechSynthesisUtterance;
		};
		/**
			The **`SpeechSynthesisVoice`** interface of the Web Speech API represents a voice that the system supports.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SpeechSynthesisVoice)
		**/
		var SpeechSynthesisVoice : {
			var prototype : js.html.SpeechSynthesisVoice;
		};
		/**
			The DOM **`StaticRange`** interface extends AbstractRange to provide a method to specify a range of content in the DOM whose contents don't update to reflect changes which occur within the DOM tree.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/StaticRange)
		**/
		var StaticRange : {
			var prototype : js.html.StaticRange;
		};
		/**
			The `StereoPannerNode` interface of the Web Audio API represents a simple stereo panner node that can be used to pan an audio stream left or right.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/StereoPannerNode)
		**/
		var StereoPannerNode : {
			var prototype : js.html.audio.StereoPannerNode;
		};
		/**
			The **`Storage`** interface of the Web Storage API provides access to a particular domain's session or local storage.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Storage)
		**/
		var Storage : {
			var prototype : js.html.Storage;
		};
		/**
			The **`StorageEvent`** interface is implemented by the Window/storage_event event, which is sent to a window when a storage area the window has access to is changed within the context of another document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/StorageEvent)
		**/
		var StorageEvent : {
			var prototype : js.html.StorageEvent;
		};
		/**
			The **`StorageManager`** interface of the Storage API provides an interface for managing persistence permissions and estimating available storage.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/StorageManager)
		**/
		var StorageManager : {
			var prototype : js.html.StorageManager;
		};
		/**
			The **`StylePropertyMap`** interface of the CSS Typed Object Model API provides a representation of a CSS declaration block that is an alternative to CSSStyleDeclaration.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/StylePropertyMap)
		**/
		var StylePropertyMap : {
			var prototype : js.html.StylePropertyMap;
		};
		/**
			The **`StylePropertyMapReadOnly`** interface of the CSS Typed Object Model API provides a read-only representation of a CSS declaration block that is an alternative to CSSStyleDeclaration.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/StylePropertyMapReadOnly)
		**/
		var StylePropertyMapReadOnly : {
			var prototype : js.html.StylePropertyMapReadOnly;
		};
		/**
			An object implementing the `StyleSheet` interface represents a single style sheet.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/StyleSheet)
		**/
		var StyleSheet : {
			var prototype : js.html.StyleSheet;
		};
		/**
			The `StyleSheetList` interface represents a list of CSSStyleSheet objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/StyleSheetList)
		**/
		var StyleSheetList : {
			var prototype : js.html.StyleSheetList;
		};
		/**
			The **`SubmitEvent`** interface defines the object used to represent an HTML form's HTMLFormElement.submit_event event.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SubmitEvent)
		**/
		var SubmitEvent : {
			var prototype : js.html.SubmitEvent;
		};
		/**
			The **`SubtleCrypto`** interface of the Web Crypto API provides a number of low-level cryptographic functions.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/SubtleCrypto)
		**/
		var SubtleCrypto : {
			var prototype : js.html.SubtleCrypto;
		};
		/**
			The **`Text`** interface represents a text Node in a DOM tree.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Text)
		**/
		var Text : {
			var prototype : js.html.Text;
		};
		/**
			The **`TextDecoder`** interface represents a decoder for a specific text encoding, such as `UTF-8`, `ISO-8859-2`, `KOI8-R`, `GBK`, etc.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextDecoder)
			
			`TextDecoder` class is a global reference for `import { TextDecoder } from 'node:util'`
			https://nodejs.org/api/globals.html#textdecoder
		**/
		var TextDecoder : {
			var prototype : js.html.TextDecoder;
		};
		/**
			The **`TextDecoderStream`** interface of the Encoding API converts a stream of text in a binary encoding, such as UTF-8 etc., to a stream of strings.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextDecoderStream)
		**/
		var TextDecoderStream : {
			var prototype : js.html.TextDecoderStream;
		};
		/**
			The **`TextEncoder`** interface takes a stream of code points as input and emits a stream of UTF-8 bytes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextEncoder)
			
			`TextEncoder` class is a global reference for `import { TextEncoder } from 'node:util'`
			https://nodejs.org/api/globals.html#textencoder
		**/
		var TextEncoder : {
			var prototype : js.html.TextEncoder;
		};
		/**
			The **`TextEncoderStream`** interface of the Encoding API converts a stream of strings into bytes in the UTF-8 encoding.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextEncoderStream)
		**/
		var TextEncoderStream : {
			var prototype : js.html.TextEncoderStream;
		};
		/**
			The **`TextEvent`** interface is a legacy UI event interface for reporting changes to text UI elements.
		**/
		var TextEvent : {
			var prototype : js.html.TextEvent;
		};
		/**
			The **`TextMetrics`** interface represents the dimensions of a piece of text in the canvas; a `TextMetrics` instance can be retrieved using the CanvasRenderingContext2D.measureText() method.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextMetrics)
		**/
		var TextMetrics : {
			var prototype : js.html.TextMetrics;
		};
		/**
			The **`TextTrack`** interface of the WebVTT API represents a text track associated with a media element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextTrack)
		**/
		var TextTrack : {
			var prototype : js.html.TextTrack;
		};
		/**
			The **`TextTrackCue`** interface of the WebVTT API is the abstract base class for the various derived cue types, such as VTTCue; you will work with these derived types rather than the base class.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextTrackCue)
		**/
		var TextTrackCue : {
			var prototype : js.html.TextTrackCue;
		};
		/**
			The **`TextTrackCueList`** interface of the WebVTT API is an array-like object that represents a dynamically updating list of TextTrackCue objects.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextTrackCueList)
		**/
		var TextTrackCueList : {
			var prototype : js.html.TextTrackCueList;
		};
		/**
			The **`TextTrackList`** interface is used to represent a list of the text tracks defined for the associated video or audio element, with each track represented by a separate textTrack object in the list.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TextTrackList)
		**/
		var TextTrackList : {
			var prototype : js.html.TextTrackList;
		};
		/**
			When loading a media resource for use by an audio or video element, the **`TimeRanges`** interface is used for representing the time ranges of the media resource that have been buffered, the time ranges that have been played, and the time ranges that are seekable.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TimeRanges)
		**/
		var TimeRanges : {
			var prototype : js.html.TimeRanges;
		};
		/**
			The **`ToggleEvent`** interface represents an event notifying the user an Element's state has changed.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ToggleEvent)
		**/
		var ToggleEvent : {
			var prototype : js.html.ToggleEvent;
		};
		/**
			The **`Touch`** interface represents a single contact point on a touch-sensitive device.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Touch)
		**/
		var Touch : {
			var prototype : js.html.Touch;
		};
		/**
			The **`TouchEvent`** interface represents an UIEvent which is sent when the state of contacts with a touch-sensitive surface changes.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TouchEvent)
		**/
		var TouchEvent : {
			var prototype : js.html.TouchEvent;
		};
		/**
			The **`TouchList`** interface represents a list of contact points on a touch surface.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TouchList)
		**/
		var TouchList : {
			var prototype : js.html.TouchList;
		};
		/**
			The **`TrackEvent`** interface of the HTML DOM API is used for events which represent changes to a set of available tracks on an HTML media element; these events are `addtrack` and `removetrack`.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TrackEvent)
		**/
		var TrackEvent : {
			var prototype : js.html.TrackEvent;
		};
		/**
			The **`TransformStream`** interface of the Streams API represents a concrete implementation of the pipe chain _transform stream_ concept.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStream)
		**/
		var TransformStream : {
			var prototype : js.html.TransformStream<Dynamic, Dynamic>;
		};
		/**
			The **`TransformStreamDefaultController`** interface of the Streams API provides methods to manipulate the associated ReadableStream and WritableStream.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransformStreamDefaultController)
		**/
		var TransformStreamDefaultController : {
			var prototype : js.html.TransformStreamDefaultController<Dynamic>;
		};
		/**
			The **`TransitionEvent`** interface represents events providing information related to transitions.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TransitionEvent)
		**/
		var TransitionEvent : {
			var prototype : js.html.TransitionEvent;
		};
		/**
			The **`TreeWalker`** object represents the nodes of a document subtree and a position within them.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/TreeWalker)
		**/
		var TreeWalker : {
			var prototype : js.html.TreeWalker;
		};
		/**
			The **`UIEvent`** interface represents simple user interface events.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/UIEvent)
		**/
		var UIEvent : {
			var prototype : js.html.UIEvent;
		};
		/**
			The **`URL`** interface is used to parse, construct, normalize, and encode URL.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL)
			
			`URL` class is a global reference for `import { URL } from 'node:url'`
			https://nodejs.org/api/url.html#the-whatwg-url-api
		**/
		var URL : {
			var prototype : js.html.URL;
			/**
				The **`URL.canParse()`** static method of the URL interface returns a boolean indicating whether or not an absolute URL, or a relative URL combined with a base URL, are parsable and valid.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL/canParse_static)
			**/
			function canParse(url:ts.AnyOf2<String, js.html.URL>, ?base:ts.AnyOf2<String, js.html.URL>):Bool;
			/**
				The **`createObjectURL()`** static method of the URL interface creates a string containing a URL representing the object given in the parameter.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL/createObjectURL_static)
			**/
			function createObjectURL(obj:ts.AnyOf2<js.html.Blob, js.html.MediaSource>):String;
			/**
				The **`URL.parse()`** static method of the URL interface returns a newly created URL object representing the URL defined by the parameters.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL/parse_static)
			**/
			function parse(url:ts.AnyOf2<String, js.html.URL>, ?base:ts.AnyOf2<String, js.html.URL>):Null<js.html.URL>;
			/**
				The **`revokeObjectURL()`** static method of the URL interface releases an existing object URL which was previously created by calling Call this method when you've finished using an object URL to let the browser know not to keep the reference to the file any longer.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL/revokeObjectURL_static)
			**/
			function revokeObjectURL(url:String):Void;
		};
		var webkitURL : {
			var prototype : js.html.URL;
			/**
				The **`URL.canParse()`** static method of the URL interface returns a boolean indicating whether or not an absolute URL, or a relative URL combined with a base URL, are parsable and valid.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL/canParse_static)
			**/
			function canParse(url:ts.AnyOf2<String, js.html.URL>, ?base:ts.AnyOf2<String, js.html.URL>):Bool;
			/**
				The **`createObjectURL()`** static method of the URL interface creates a string containing a URL representing the object given in the parameter.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL/createObjectURL_static)
			**/
			function createObjectURL(obj:ts.AnyOf2<js.html.Blob, js.html.MediaSource>):String;
			/**
				The **`URL.parse()`** static method of the URL interface returns a newly created URL object representing the URL defined by the parameters.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL/parse_static)
			**/
			function parse(url:ts.AnyOf2<String, js.html.URL>, ?base:ts.AnyOf2<String, js.html.URL>):Null<js.html.URL>;
			/**
				The **`revokeObjectURL()`** static method of the URL interface releases an existing object URL which was previously created by calling Call this method when you've finished using an object URL to let the browser know not to keep the reference to the file any longer.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/URL/revokeObjectURL_static)
			**/
			function revokeObjectURL(url:String):Void;
		};
		/**
			The **`URLSearchParams`** interface defines utility methods to work with the query string of a URL.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/URLSearchParams)
			
			`URLSearchParams` class is a global reference for `import { URLSearchParams } from 'node:url'`
			https://nodejs.org/api/url.html#class-urlsearchparams
		**/
		var URLSearchParams : {
			var prototype : js.html.URLSearchParams;
		};
		/**
			The **`UserActivation`** interface provides information about whether a user is currently interacting with the page, or has completed an interaction since page load.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/UserActivation)
		**/
		var UserActivation : {
			var prototype : js.html.UserActivation;
		};
		/**
			The `VTTCue` interface of the WebVTT API represents a cue that can be added to the text track associated with a particular video (or other media).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/VTTCue)
		**/
		var VTTCue : {
			var prototype : js.html.VTTCue;
		};
		/**
			The `VTTRegion` interface of the WebVTT API describes a portion of the video to render a VTTCue onto.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/VTTRegion)
		**/
		var VTTRegion : {
			var prototype : js.html.VTTRegion;
		};
		/**
			The **`ValidityState`** interface represents the _validity states_ that an element can be in, with respect to constraint validation.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ValidityState)
		**/
		var ValidityState : {
			var prototype : js.html.ValidityState;
		};
		/**
			The **`VideoColorSpace`** interface of the WebCodecs API represents the color space of a video.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoColorSpace)
		**/
		var VideoColorSpace : {
			var prototype : js.html.VideoColorSpace;
		};
		/**
			The **`VideoDecoder`** interface of the WebCodecs API decodes chunks of video.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoDecoder)
		**/
		var VideoDecoder : {
			var prototype : js.html.VideoDecoder;
			/**
				The **`isConfigSupported()`** static method of the VideoDecoder interface checks if the given config is supported (that is, if VideoDecoder objects can be successfully configured with the given config).
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoDecoder/isConfigSupported_static)
			**/
			function isConfigSupported(config:js.html.VideoDecoderConfig):js.lib.Promise<js.html.VideoDecoderSupport>;
		};
		/**
			The **`VideoEncoder`** interface of the WebCodecs API encodes VideoFrame objects into EncodedVideoChunks.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder)
		**/
		var VideoEncoder : {
			var prototype : js.html.VideoEncoder;
			/**
				The **`isConfigSupported()`** static method of the VideoEncoder interface checks if VideoEncoder can be successfully configured with the given config.
				
				[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoEncoder/isConfigSupported_static)
			**/
			function isConfigSupported(config:js.html.VideoEncoderConfig):js.lib.Promise<js.html.VideoEncoderSupport>;
		};
		/**
			The **`VideoFrame`** interface of the Web Codecs API represents a frame of a video.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoFrame)
		**/
		var VideoFrame : {
			var prototype : js.html.VideoFrame;
		};
		/**
			A **`VideoPlaybackQuality`** object is returned by the HTMLVideoElement.getVideoPlaybackQuality() method and contains metrics that can be used to determine the playback quality of a video.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/VideoPlaybackQuality)
		**/
		var VideoPlaybackQuality : {
			var prototype : js.html.VideoPlaybackQuality;
		};
		/**
			The **`ViewTransition`** interface of the View Transition API represents an active view transition, and provides functionality to react to the transition reaching different states (e.g., ready to run the animation, or animation finished) or skip the transition altogether.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/ViewTransition)
		**/
		var ViewTransition : {
			var prototype : js.html.ViewTransition;
		};
		var ViewTransitionTypeSet : {
			var prototype : js.html.ViewTransitionTypeSet;
		};
		/**
			The **`VisualViewport`** interface of the Visual Viewport API represents the visual viewport for a given window.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/VisualViewport)
		**/
		var VisualViewport : {
			var prototype : js.html.VisualViewport;
		};
		/**
			The **`WakeLock`** interface of the Screen Wake Lock API can be used to request a lock that prevents device screens from dimming or locking when an application needs to keep running.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLock)
		**/
		var WakeLock : {
			var prototype : js.html.WakeLock;
		};
		/**
			The **`WakeLockSentinel`** interface of the Screen Wake Lock API can be used to monitor the status of the platform screen wake lock, and manually release the lock when needed.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WakeLockSentinel)
		**/
		var WakeLockSentinel : {
			var prototype : js.html.WakeLockSentinel;
		};
		/**
			The **`WaveShaperNode`** interface represents a non-linear distorter.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WaveShaperNode)
		**/
		var WaveShaperNode : {
			var prototype : js.html.audio.WaveShaperNode;
		};
		/**
			The **WebGL2RenderingContext** interface provides the OpenGL ES 3.0 rendering context for the drawing surface of an HTML canvas element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGL2RenderingContext)
		**/
		var WebGL2RenderingContext : {
			var prototype : js.html.webgl.WebGL2RenderingContext;
			final READ_BUFFER : Int;
			final UNPACK_ROW_LENGTH : Int;
			final UNPACK_SKIP_ROWS : Int;
			final UNPACK_SKIP_PIXELS : Int;
			final PACK_ROW_LENGTH : Int;
			final PACK_SKIP_ROWS : Int;
			final PACK_SKIP_PIXELS : Int;
			final COLOR : Int;
			final DEPTH : Int;
			final STENCIL : Int;
			final RED : Int;
			final RGB8 : Int;
			final RGB10_A2 : Int;
			final TEXTURE_BINDING_3D : Int;
			final UNPACK_SKIP_IMAGES : Int;
			final UNPACK_IMAGE_HEIGHT : Int;
			final TEXTURE_3D : Int;
			final TEXTURE_WRAP_R : Int;
			final MAX_3D_TEXTURE_SIZE : Int;
			final UNSIGNED_INT_2_10_10_10_REV : Int;
			final MAX_ELEMENTS_VERTICES : Int;
			final MAX_ELEMENTS_INDICES : Int;
			final TEXTURE_MIN_LOD : Int;
			final TEXTURE_MAX_LOD : Int;
			final TEXTURE_BASE_LEVEL : Int;
			final TEXTURE_MAX_LEVEL : Int;
			final MIN : Int;
			final MAX : Int;
			final DEPTH_COMPONENT24 : Int;
			final MAX_TEXTURE_LOD_BIAS : Int;
			final TEXTURE_COMPARE_MODE : Int;
			final TEXTURE_COMPARE_FUNC : Int;
			final CURRENT_QUERY : Int;
			final QUERY_RESULT : Int;
			final QUERY_RESULT_AVAILABLE : Int;
			final STREAM_READ : Int;
			final STREAM_COPY : Int;
			final STATIC_READ : Int;
			final STATIC_COPY : Int;
			final DYNAMIC_READ : Int;
			final DYNAMIC_COPY : Int;
			final MAX_DRAW_BUFFERS : Int;
			final DRAW_BUFFER0 : Int;
			final DRAW_BUFFER1 : Int;
			final DRAW_BUFFER2 : Int;
			final DRAW_BUFFER3 : Int;
			final DRAW_BUFFER4 : Int;
			final DRAW_BUFFER5 : Int;
			final DRAW_BUFFER6 : Int;
			final DRAW_BUFFER7 : Int;
			final DRAW_BUFFER8 : Int;
			final DRAW_BUFFER9 : Int;
			final DRAW_BUFFER10 : Int;
			final DRAW_BUFFER11 : Int;
			final DRAW_BUFFER12 : Int;
			final DRAW_BUFFER13 : Int;
			final DRAW_BUFFER14 : Int;
			final DRAW_BUFFER15 : Int;
			final MAX_FRAGMENT_UNIFORM_COMPONENTS : Int;
			final MAX_VERTEX_UNIFORM_COMPONENTS : Int;
			final SAMPLER_3D : Int;
			final SAMPLER_2D_SHADOW : Int;
			final FRAGMENT_SHADER_DERIVATIVE_HINT : Int;
			final PIXEL_PACK_BUFFER : Int;
			final PIXEL_UNPACK_BUFFER : Int;
			final PIXEL_PACK_BUFFER_BINDING : Int;
			final PIXEL_UNPACK_BUFFER_BINDING : Int;
			final FLOAT_MAT2x3 : Int;
			final FLOAT_MAT2x4 : Int;
			final FLOAT_MAT3x2 : Int;
			final FLOAT_MAT3x4 : Int;
			final FLOAT_MAT4x2 : Int;
			final FLOAT_MAT4x3 : Int;
			final SRGB : Int;
			final SRGB8 : Int;
			final SRGB8_ALPHA8 : Int;
			final COMPARE_REF_TO_TEXTURE : Int;
			final RGBA32F : Int;
			final RGB32F : Int;
			final RGBA16F : Int;
			final RGB16F : Int;
			final VERTEX_ATTRIB_ARRAY_INTEGER : Int;
			final MAX_ARRAY_TEXTURE_LAYERS : Int;
			final MIN_PROGRAM_TEXEL_OFFSET : Int;
			final MAX_PROGRAM_TEXEL_OFFSET : Int;
			final MAX_VARYING_COMPONENTS : Int;
			final TEXTURE_2D_ARRAY : Int;
			final TEXTURE_BINDING_2D_ARRAY : Int;
			final R11F_G11F_B10F : Int;
			final UNSIGNED_INT_10F_11F_11F_REV : Int;
			final RGB9_E5 : Int;
			final UNSIGNED_INT_5_9_9_9_REV : Int;
			final TRANSFORM_FEEDBACK_BUFFER_MODE : Int;
			final MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : Int;
			final TRANSFORM_FEEDBACK_VARYINGS : Int;
			final TRANSFORM_FEEDBACK_BUFFER_START : Int;
			final TRANSFORM_FEEDBACK_BUFFER_SIZE : Int;
			final TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : Int;
			final RASTERIZER_DISCARD : Int;
			final MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : Int;
			final MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : Int;
			final INTERLEAVED_ATTRIBS : Int;
			final SEPARATE_ATTRIBS : Int;
			final TRANSFORM_FEEDBACK_BUFFER : Int;
			final TRANSFORM_FEEDBACK_BUFFER_BINDING : Int;
			final RGBA32UI : Int;
			final RGB32UI : Int;
			final RGBA16UI : Int;
			final RGB16UI : Int;
			final RGBA8UI : Int;
			final RGB8UI : Int;
			final RGBA32I : Int;
			final RGB32I : Int;
			final RGBA16I : Int;
			final RGB16I : Int;
			final RGBA8I : Int;
			final RGB8I : Int;
			final RED_INTEGER : Int;
			final RGB_INTEGER : Int;
			final RGBA_INTEGER : Int;
			final SAMPLER_2D_ARRAY : Int;
			final SAMPLER_2D_ARRAY_SHADOW : Int;
			final SAMPLER_CUBE_SHADOW : Int;
			final UNSIGNED_INT_VEC2 : Int;
			final UNSIGNED_INT_VEC3 : Int;
			final UNSIGNED_INT_VEC4 : Int;
			final INT_SAMPLER_2D : Int;
			final INT_SAMPLER_3D : Int;
			final INT_SAMPLER_CUBE : Int;
			final INT_SAMPLER_2D_ARRAY : Int;
			final UNSIGNED_INT_SAMPLER_2D : Int;
			final UNSIGNED_INT_SAMPLER_3D : Int;
			final UNSIGNED_INT_SAMPLER_CUBE : Int;
			final UNSIGNED_INT_SAMPLER_2D_ARRAY : Int;
			final DEPTH_COMPONENT32F : Int;
			final DEPTH32F_STENCIL8 : Int;
			final FLOAT_32_UNSIGNED_INT_24_8_REV : Int;
			final FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : Int;
			final FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : Int;
			final FRAMEBUFFER_ATTACHMENT_RED_SIZE : Int;
			final FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : Int;
			final FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : Int;
			final FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : Int;
			final FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : Int;
			final FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : Int;
			final FRAMEBUFFER_DEFAULT : Int;
			final UNSIGNED_INT_24_8 : Int;
			final DEPTH24_STENCIL8 : Int;
			final UNSIGNED_NORMALIZED : Int;
			final DRAW_FRAMEBUFFER_BINDING : Int;
			final READ_FRAMEBUFFER : Int;
			final DRAW_FRAMEBUFFER : Int;
			final READ_FRAMEBUFFER_BINDING : Int;
			final RENDERBUFFER_SAMPLES : Int;
			final FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : Int;
			final MAX_COLOR_ATTACHMENTS : Int;
			final COLOR_ATTACHMENT1 : Int;
			final COLOR_ATTACHMENT2 : Int;
			final COLOR_ATTACHMENT3 : Int;
			final COLOR_ATTACHMENT4 : Int;
			final COLOR_ATTACHMENT5 : Int;
			final COLOR_ATTACHMENT6 : Int;
			final COLOR_ATTACHMENT7 : Int;
			final COLOR_ATTACHMENT8 : Int;
			final COLOR_ATTACHMENT9 : Int;
			final COLOR_ATTACHMENT10 : Int;
			final COLOR_ATTACHMENT11 : Int;
			final COLOR_ATTACHMENT12 : Int;
			final COLOR_ATTACHMENT13 : Int;
			final COLOR_ATTACHMENT14 : Int;
			final COLOR_ATTACHMENT15 : Int;
			final FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : Int;
			final MAX_SAMPLES : Int;
			final HALF_FLOAT : Int;
			final RG : Int;
			final RG_INTEGER : Int;
			final R8 : Int;
			final RG8 : Int;
			final R16F : Int;
			final R32F : Int;
			final RG16F : Int;
			final RG32F : Int;
			final R8I : Int;
			final R8UI : Int;
			final R16I : Int;
			final R16UI : Int;
			final R32I : Int;
			final R32UI : Int;
			final RG8I : Int;
			final RG8UI : Int;
			final RG16I : Int;
			final RG16UI : Int;
			final RG32I : Int;
			final RG32UI : Int;
			final VERTEX_ARRAY_BINDING : Int;
			final R8_SNORM : Int;
			final RG8_SNORM : Int;
			final RGB8_SNORM : Int;
			final RGBA8_SNORM : Int;
			final SIGNED_NORMALIZED : Int;
			final COPY_READ_BUFFER : Int;
			final COPY_WRITE_BUFFER : Int;
			final COPY_READ_BUFFER_BINDING : Int;
			final COPY_WRITE_BUFFER_BINDING : Int;
			final UNIFORM_BUFFER : Int;
			final UNIFORM_BUFFER_BINDING : Int;
			final UNIFORM_BUFFER_START : Int;
			final UNIFORM_BUFFER_SIZE : Int;
			final MAX_VERTEX_UNIFORM_BLOCKS : Int;
			final MAX_FRAGMENT_UNIFORM_BLOCKS : Int;
			final MAX_COMBINED_UNIFORM_BLOCKS : Int;
			final MAX_UNIFORM_BUFFER_BINDINGS : Int;
			final MAX_UNIFORM_BLOCK_SIZE : Int;
			final MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : Int;
			final MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : Int;
			final UNIFORM_BUFFER_OFFSET_ALIGNMENT : Int;
			final ACTIVE_UNIFORM_BLOCKS : Int;
			final UNIFORM_TYPE : Int;
			final UNIFORM_SIZE : Int;
			final UNIFORM_BLOCK_INDEX : Int;
			final UNIFORM_OFFSET : Int;
			final UNIFORM_ARRAY_STRIDE : Int;
			final UNIFORM_MATRIX_STRIDE : Int;
			final UNIFORM_IS_ROW_MAJOR : Int;
			final UNIFORM_BLOCK_BINDING : Int;
			final UNIFORM_BLOCK_DATA_SIZE : Int;
			final UNIFORM_BLOCK_ACTIVE_UNIFORMS : Int;
			final UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : Int;
			final UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : Int;
			final UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : Int;
			final INVALID_INDEX : Float;
			final MAX_VERTEX_OUTPUT_COMPONENTS : Int;
			final MAX_FRAGMENT_INPUT_COMPONENTS : Int;
			final MAX_SERVER_WAIT_TIMEOUT : Int;
			final OBJECT_TYPE : Int;
			final SYNC_CONDITION : Int;
			final SYNC_STATUS : Int;
			final SYNC_FLAGS : Int;
			final SYNC_FENCE : Int;
			final SYNC_GPU_COMMANDS_COMPLETE : Int;
			final UNSIGNALED : Int;
			final SIGNALED : Int;
			final ALREADY_SIGNALED : Int;
			final TIMEOUT_EXPIRED : Int;
			final CONDITION_SATISFIED : Int;
			final WAIT_FAILED : Int;
			final SYNC_FLUSH_COMMANDS_BIT : Int;
			final VERTEX_ATTRIB_ARRAY_DIVISOR : Int;
			final ANY_SAMPLES_PASSED : Int;
			final ANY_SAMPLES_PASSED_CONSERVATIVE : Int;
			final SAMPLER_BINDING : Int;
			final RGB10_A2UI : Int;
			final INT_2_10_10_10_REV : Int;
			final TRANSFORM_FEEDBACK : Int;
			final TRANSFORM_FEEDBACK_PAUSED : Int;
			final TRANSFORM_FEEDBACK_ACTIVE : Int;
			final TRANSFORM_FEEDBACK_BINDING : Int;
			final TEXTURE_IMMUTABLE_FORMAT : Int;
			final MAX_ELEMENT_INDEX : Int;
			final TEXTURE_IMMUTABLE_LEVELS : Int;
			final TIMEOUT_IGNORED : Int;
			final MAX_CLIENT_WAIT_TIMEOUT_WEBGL : Int;
			final DEPTH_BUFFER_BIT : Int;
			final STENCIL_BUFFER_BIT : Int;
			final COLOR_BUFFER_BIT : Int;
			final POINTS : Int;
			final LINES : Int;
			final LINE_LOOP : Int;
			final LINE_STRIP : Int;
			final TRIANGLES : Int;
			final TRIANGLE_STRIP : Int;
			final TRIANGLE_FAN : Int;
			final ZERO : Int;
			final ONE : Int;
			final SRC_COLOR : Int;
			final ONE_MINUS_SRC_COLOR : Int;
			final SRC_ALPHA : Int;
			final ONE_MINUS_SRC_ALPHA : Int;
			final DST_ALPHA : Int;
			final ONE_MINUS_DST_ALPHA : Int;
			final DST_COLOR : Int;
			final ONE_MINUS_DST_COLOR : Int;
			final SRC_ALPHA_SATURATE : Int;
			final FUNC_ADD : Int;
			final BLEND_EQUATION : Int;
			final BLEND_EQUATION_RGB : Int;
			final BLEND_EQUATION_ALPHA : Int;
			final FUNC_SUBTRACT : Int;
			final FUNC_REVERSE_SUBTRACT : Int;
			final BLEND_DST_RGB : Int;
			final BLEND_SRC_RGB : Int;
			final BLEND_DST_ALPHA : Int;
			final BLEND_SRC_ALPHA : Int;
			final CONSTANT_COLOR : Int;
			final ONE_MINUS_CONSTANT_COLOR : Int;
			final CONSTANT_ALPHA : Int;
			final ONE_MINUS_CONSTANT_ALPHA : Int;
			final BLEND_COLOR : Int;
			final ARRAY_BUFFER : Int;
			final ELEMENT_ARRAY_BUFFER : Int;
			final ARRAY_BUFFER_BINDING : Int;
			final ELEMENT_ARRAY_BUFFER_BINDING : Int;
			final STREAM_DRAW : Int;
			final STATIC_DRAW : Int;
			final DYNAMIC_DRAW : Int;
			final BUFFER_SIZE : Int;
			final BUFFER_USAGE : Int;
			final CURRENT_VERTEX_ATTRIB : Int;
			final FRONT : Int;
			final BACK : Int;
			final FRONT_AND_BACK : Int;
			final CULL_FACE : Int;
			final BLEND : Int;
			final DITHER : Int;
			final STENCIL_TEST : Int;
			final DEPTH_TEST : Int;
			final SCISSOR_TEST : Int;
			final POLYGON_OFFSET_FILL : Int;
			final SAMPLE_ALPHA_TO_COVERAGE : Int;
			final SAMPLE_COVERAGE : Int;
			final NO_ERROR : Int;
			final INVALID_ENUM : Int;
			final INVALID_VALUE : Int;
			final INVALID_OPERATION : Int;
			final OUT_OF_MEMORY : Int;
			final CW : Int;
			final CCW : Int;
			final LINE_WIDTH : Int;
			final ALIASED_POINT_SIZE_RANGE : Int;
			final ALIASED_LINE_WIDTH_RANGE : Int;
			final CULL_FACE_MODE : Int;
			final FRONT_FACE : Int;
			final DEPTH_RANGE : Int;
			final DEPTH_WRITEMASK : Int;
			final DEPTH_CLEAR_VALUE : Int;
			final DEPTH_FUNC : Int;
			final STENCIL_CLEAR_VALUE : Int;
			final STENCIL_FUNC : Int;
			final STENCIL_FAIL : Int;
			final STENCIL_PASS_DEPTH_FAIL : Int;
			final STENCIL_PASS_DEPTH_PASS : Int;
			final STENCIL_REF : Int;
			final STENCIL_VALUE_MASK : Int;
			final STENCIL_WRITEMASK : Int;
			final STENCIL_BACK_FUNC : Int;
			final STENCIL_BACK_FAIL : Int;
			final STENCIL_BACK_PASS_DEPTH_FAIL : Int;
			final STENCIL_BACK_PASS_DEPTH_PASS : Int;
			final STENCIL_BACK_REF : Int;
			final STENCIL_BACK_VALUE_MASK : Int;
			final STENCIL_BACK_WRITEMASK : Int;
			final VIEWPORT : Int;
			final SCISSOR_BOX : Int;
			final COLOR_CLEAR_VALUE : Int;
			final COLOR_WRITEMASK : Int;
			final UNPACK_ALIGNMENT : Int;
			final PACK_ALIGNMENT : Int;
			final MAX_TEXTURE_SIZE : Int;
			final MAX_VIEWPORT_DIMS : Int;
			final SUBPIXEL_BITS : Int;
			final RED_BITS : Int;
			final GREEN_BITS : Int;
			final BLUE_BITS : Int;
			final ALPHA_BITS : Int;
			final DEPTH_BITS : Int;
			final STENCIL_BITS : Int;
			final POLYGON_OFFSET_UNITS : Int;
			final POLYGON_OFFSET_FACTOR : Int;
			final TEXTURE_BINDING_2D : Int;
			final SAMPLE_BUFFERS : Int;
			final SAMPLES : Int;
			final SAMPLE_COVERAGE_VALUE : Int;
			final SAMPLE_COVERAGE_INVERT : Int;
			final COMPRESSED_TEXTURE_FORMATS : Int;
			final DONT_CARE : Int;
			final FASTEST : Int;
			final NICEST : Int;
			final GENERATE_MIPMAP_HINT : Int;
			final BYTE : Int;
			final UNSIGNED_BYTE : Int;
			final SHORT : Int;
			final UNSIGNED_SHORT : Int;
			final INT : Int;
			final UNSIGNED_INT : Int;
			final FLOAT : Int;
			final DEPTH_COMPONENT : Int;
			final ALPHA : Int;
			final RGB : Int;
			final RGBA : Int;
			final LUMINANCE : Int;
			final LUMINANCE_ALPHA : Int;
			final UNSIGNED_SHORT_4_4_4_4 : Int;
			final UNSIGNED_SHORT_5_5_5_1 : Int;
			final UNSIGNED_SHORT_5_6_5 : Int;
			final FRAGMENT_SHADER : Int;
			final VERTEX_SHADER : Int;
			final MAX_VERTEX_ATTRIBS : Int;
			final MAX_VERTEX_UNIFORM_VECTORS : Int;
			final MAX_VARYING_VECTORS : Int;
			final MAX_COMBINED_TEXTURE_IMAGE_UNITS : Int;
			final MAX_VERTEX_TEXTURE_IMAGE_UNITS : Int;
			final MAX_TEXTURE_IMAGE_UNITS : Int;
			final MAX_FRAGMENT_UNIFORM_VECTORS : Int;
			final SHADER_TYPE : Int;
			final DELETE_STATUS : Int;
			final LINK_STATUS : Int;
			final VALIDATE_STATUS : Int;
			final ATTACHED_SHADERS : Int;
			final ACTIVE_UNIFORMS : Int;
			final ACTIVE_ATTRIBUTES : Int;
			final SHADING_LANGUAGE_VERSION : Int;
			final CURRENT_PROGRAM : Int;
			final NEVER : Int;
			final LESS : Int;
			final EQUAL : Int;
			final LEQUAL : Int;
			final GREATER : Int;
			final NOTEQUAL : Int;
			final GEQUAL : Int;
			final ALWAYS : Int;
			final KEEP : Int;
			final REPLACE : Int;
			final INCR : Int;
			final DECR : Int;
			final INVERT : Int;
			final INCR_WRAP : Int;
			final DECR_WRAP : Int;
			final VENDOR : Int;
			final RENDERER : Int;
			final VERSION : Int;
			final NEAREST : Int;
			final LINEAR : Int;
			final NEAREST_MIPMAP_NEAREST : Int;
			final LINEAR_MIPMAP_NEAREST : Int;
			final NEAREST_MIPMAP_LINEAR : Int;
			final LINEAR_MIPMAP_LINEAR : Int;
			final TEXTURE_MAG_FILTER : Int;
			final TEXTURE_MIN_FILTER : Int;
			final TEXTURE_WRAP_S : Int;
			final TEXTURE_WRAP_T : Int;
			final TEXTURE_2D : Int;
			final TEXTURE : Int;
			final TEXTURE_CUBE_MAP : Int;
			final TEXTURE_BINDING_CUBE_MAP : Int;
			final TEXTURE_CUBE_MAP_POSITIVE_X : Int;
			final TEXTURE_CUBE_MAP_NEGATIVE_X : Int;
			final TEXTURE_CUBE_MAP_POSITIVE_Y : Int;
			final TEXTURE_CUBE_MAP_NEGATIVE_Y : Int;
			final TEXTURE_CUBE_MAP_POSITIVE_Z : Int;
			final TEXTURE_CUBE_MAP_NEGATIVE_Z : Int;
			final MAX_CUBE_MAP_TEXTURE_SIZE : Int;
			final TEXTURE0 : Int;
			final TEXTURE1 : Int;
			final TEXTURE2 : Int;
			final TEXTURE3 : Int;
			final TEXTURE4 : Int;
			final TEXTURE5 : Int;
			final TEXTURE6 : Int;
			final TEXTURE7 : Int;
			final TEXTURE8 : Int;
			final TEXTURE9 : Int;
			final TEXTURE10 : Int;
			final TEXTURE11 : Int;
			final TEXTURE12 : Int;
			final TEXTURE13 : Int;
			final TEXTURE14 : Int;
			final TEXTURE15 : Int;
			final TEXTURE16 : Int;
			final TEXTURE17 : Int;
			final TEXTURE18 : Int;
			final TEXTURE19 : Int;
			final TEXTURE20 : Int;
			final TEXTURE21 : Int;
			final TEXTURE22 : Int;
			final TEXTURE23 : Int;
			final TEXTURE24 : Int;
			final TEXTURE25 : Int;
			final TEXTURE26 : Int;
			final TEXTURE27 : Int;
			final TEXTURE28 : Int;
			final TEXTURE29 : Int;
			final TEXTURE30 : Int;
			final TEXTURE31 : Int;
			final ACTIVE_TEXTURE : Int;
			final REPEAT : Int;
			final CLAMP_TO_EDGE : Int;
			final MIRRORED_REPEAT : Int;
			final FLOAT_VEC2 : Int;
			final FLOAT_VEC3 : Int;
			final FLOAT_VEC4 : Int;
			final INT_VEC2 : Int;
			final INT_VEC3 : Int;
			final INT_VEC4 : Int;
			final BOOL : Int;
			final BOOL_VEC2 : Int;
			final BOOL_VEC3 : Int;
			final BOOL_VEC4 : Int;
			final FLOAT_MAT2 : Int;
			final FLOAT_MAT3 : Int;
			final FLOAT_MAT4 : Int;
			final SAMPLER_2D : Int;
			final SAMPLER_CUBE : Int;
			final VERTEX_ATTRIB_ARRAY_ENABLED : Int;
			final VERTEX_ATTRIB_ARRAY_SIZE : Int;
			final VERTEX_ATTRIB_ARRAY_STRIDE : Int;
			final VERTEX_ATTRIB_ARRAY_TYPE : Int;
			final VERTEX_ATTRIB_ARRAY_NORMALIZED : Int;
			final VERTEX_ATTRIB_ARRAY_POINTER : Int;
			final VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : Int;
			final IMPLEMENTATION_COLOR_READ_TYPE : Int;
			final IMPLEMENTATION_COLOR_READ_FORMAT : Int;
			final COMPILE_STATUS : Int;
			final LOW_FLOAT : Int;
			final MEDIUM_FLOAT : Int;
			final HIGH_FLOAT : Int;
			final LOW_INT : Int;
			final MEDIUM_INT : Int;
			final HIGH_INT : Int;
			final FRAMEBUFFER : Int;
			final RENDERBUFFER : Int;
			final RGBA4 : Int;
			final RGB5_A1 : Int;
			final RGBA8 : Int;
			final RGB565 : Int;
			final DEPTH_COMPONENT16 : Int;
			final STENCIL_INDEX8 : Int;
			final DEPTH_STENCIL : Int;
			final RENDERBUFFER_WIDTH : Int;
			final RENDERBUFFER_HEIGHT : Int;
			final RENDERBUFFER_INTERNAL_FORMAT : Int;
			final RENDERBUFFER_RED_SIZE : Int;
			final RENDERBUFFER_GREEN_SIZE : Int;
			final RENDERBUFFER_BLUE_SIZE : Int;
			final RENDERBUFFER_ALPHA_SIZE : Int;
			final RENDERBUFFER_DEPTH_SIZE : Int;
			final RENDERBUFFER_STENCIL_SIZE : Int;
			final FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : Int;
			final FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : Int;
			final FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : Int;
			final FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : Int;
			final COLOR_ATTACHMENT0 : Int;
			final DEPTH_ATTACHMENT : Int;
			final STENCIL_ATTACHMENT : Int;
			final DEPTH_STENCIL_ATTACHMENT : Int;
			final NONE : Int;
			final FRAMEBUFFER_COMPLETE : Int;
			final FRAMEBUFFER_INCOMPLETE_ATTACHMENT : Int;
			final FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : Int;
			final FRAMEBUFFER_INCOMPLETE_DIMENSIONS : Int;
			final FRAMEBUFFER_UNSUPPORTED : Int;
			final FRAMEBUFFER_BINDING : Int;
			final RENDERBUFFER_BINDING : Int;
			final MAX_RENDERBUFFER_SIZE : Int;
			final INVALID_FRAMEBUFFER_OPERATION : Int;
			final UNPACK_FLIP_Y_WEBGL : Int;
			final UNPACK_PREMULTIPLY_ALPHA_WEBGL : Int;
			final CONTEXT_LOST_WEBGL : Int;
			final UNPACK_COLORSPACE_CONVERSION_WEBGL : Int;
			final BROWSER_DEFAULT_WEBGL : Int;
		};
		/**
			The **WebGLActiveInfo** interface is part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getActiveAttrib() and WebGLRenderingContext.getActiveUniform() methods.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLActiveInfo)
		**/
		var WebGLActiveInfo : {
			var prototype : js.html.webgl.ActiveInfo;
		};
		/**
			The **WebGLBuffer** interface is part of the WebGL API and represents an opaque buffer object storing data such as vertices or colors.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLBuffer)
		**/
		var WebGLBuffer : {
			var prototype : js.html.webgl.Buffer;
		};
		/**
			The **WebGLContextEvent** interface is part of the WebGL API and is an interface for an event that is generated in response to a status change to the WebGL rendering context.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLContextEvent)
		**/
		var WebGLContextEvent : {
			var prototype : js.html.webgl.ContextEvent;
		};
		/**
			The **WebGLFramebuffer** interface is part of the WebGL API and represents a collection of buffers that serve as a rendering destination.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLFramebuffer)
		**/
		var WebGLFramebuffer : {
			var prototype : js.html.webgl.Framebuffer;
		};
		/**
			The **`WebGLProgram`** is part of the WebGL API and is a combination of two compiled WebGLShaders consisting of a vertex shader and a fragment shader (both written in GLSL).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLProgram)
		**/
		var WebGLProgram : {
			var prototype : js.html.webgl.Program;
		};
		/**
			The **`WebGLQuery`** interface is part of the WebGL 2 API and provides ways to asynchronously query for information.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLQuery)
		**/
		var WebGLQuery : {
			var prototype : js.html.webgl.Query;
		};
		/**
			The **WebGLRenderbuffer** interface is part of the WebGL API and represents a buffer that can contain an image, or that can be a source or target of a rendering operation.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLRenderbuffer)
		**/
		var WebGLRenderbuffer : {
			var prototype : js.html.webgl.Renderbuffer;
		};
		/**
			The **`WebGLRenderingContext`** interface provides an interface to the OpenGL ES 2.0 graphics rendering context for the drawing surface of an HTML canvas element.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLRenderingContext)
		**/
		var WebGLRenderingContext : {
			var prototype : js.html.webgl.RenderingContext;
			final DEPTH_BUFFER_BIT : Int;
			final STENCIL_BUFFER_BIT : Int;
			final COLOR_BUFFER_BIT : Int;
			final POINTS : Int;
			final LINES : Int;
			final LINE_LOOP : Int;
			final LINE_STRIP : Int;
			final TRIANGLES : Int;
			final TRIANGLE_STRIP : Int;
			final TRIANGLE_FAN : Int;
			final ZERO : Int;
			final ONE : Int;
			final SRC_COLOR : Int;
			final ONE_MINUS_SRC_COLOR : Int;
			final SRC_ALPHA : Int;
			final ONE_MINUS_SRC_ALPHA : Int;
			final DST_ALPHA : Int;
			final ONE_MINUS_DST_ALPHA : Int;
			final DST_COLOR : Int;
			final ONE_MINUS_DST_COLOR : Int;
			final SRC_ALPHA_SATURATE : Int;
			final FUNC_ADD : Int;
			final BLEND_EQUATION : Int;
			final BLEND_EQUATION_RGB : Int;
			final BLEND_EQUATION_ALPHA : Int;
			final FUNC_SUBTRACT : Int;
			final FUNC_REVERSE_SUBTRACT : Int;
			final BLEND_DST_RGB : Int;
			final BLEND_SRC_RGB : Int;
			final BLEND_DST_ALPHA : Int;
			final BLEND_SRC_ALPHA : Int;
			final CONSTANT_COLOR : Int;
			final ONE_MINUS_CONSTANT_COLOR : Int;
			final CONSTANT_ALPHA : Int;
			final ONE_MINUS_CONSTANT_ALPHA : Int;
			final BLEND_COLOR : Int;
			final ARRAY_BUFFER : Int;
			final ELEMENT_ARRAY_BUFFER : Int;
			final ARRAY_BUFFER_BINDING : Int;
			final ELEMENT_ARRAY_BUFFER_BINDING : Int;
			final STREAM_DRAW : Int;
			final STATIC_DRAW : Int;
			final DYNAMIC_DRAW : Int;
			final BUFFER_SIZE : Int;
			final BUFFER_USAGE : Int;
			final CURRENT_VERTEX_ATTRIB : Int;
			final FRONT : Int;
			final BACK : Int;
			final FRONT_AND_BACK : Int;
			final CULL_FACE : Int;
			final BLEND : Int;
			final DITHER : Int;
			final STENCIL_TEST : Int;
			final DEPTH_TEST : Int;
			final SCISSOR_TEST : Int;
			final POLYGON_OFFSET_FILL : Int;
			final SAMPLE_ALPHA_TO_COVERAGE : Int;
			final SAMPLE_COVERAGE : Int;
			final NO_ERROR : Int;
			final INVALID_ENUM : Int;
			final INVALID_VALUE : Int;
			final INVALID_OPERATION : Int;
			final OUT_OF_MEMORY : Int;
			final CW : Int;
			final CCW : Int;
			final LINE_WIDTH : Int;
			final ALIASED_POINT_SIZE_RANGE : Int;
			final ALIASED_LINE_WIDTH_RANGE : Int;
			final CULL_FACE_MODE : Int;
			final FRONT_FACE : Int;
			final DEPTH_RANGE : Int;
			final DEPTH_WRITEMASK : Int;
			final DEPTH_CLEAR_VALUE : Int;
			final DEPTH_FUNC : Int;
			final STENCIL_CLEAR_VALUE : Int;
			final STENCIL_FUNC : Int;
			final STENCIL_FAIL : Int;
			final STENCIL_PASS_DEPTH_FAIL : Int;
			final STENCIL_PASS_DEPTH_PASS : Int;
			final STENCIL_REF : Int;
			final STENCIL_VALUE_MASK : Int;
			final STENCIL_WRITEMASK : Int;
			final STENCIL_BACK_FUNC : Int;
			final STENCIL_BACK_FAIL : Int;
			final STENCIL_BACK_PASS_DEPTH_FAIL : Int;
			final STENCIL_BACK_PASS_DEPTH_PASS : Int;
			final STENCIL_BACK_REF : Int;
			final STENCIL_BACK_VALUE_MASK : Int;
			final STENCIL_BACK_WRITEMASK : Int;
			final VIEWPORT : Int;
			final SCISSOR_BOX : Int;
			final COLOR_CLEAR_VALUE : Int;
			final COLOR_WRITEMASK : Int;
			final UNPACK_ALIGNMENT : Int;
			final PACK_ALIGNMENT : Int;
			final MAX_TEXTURE_SIZE : Int;
			final MAX_VIEWPORT_DIMS : Int;
			final SUBPIXEL_BITS : Int;
			final RED_BITS : Int;
			final GREEN_BITS : Int;
			final BLUE_BITS : Int;
			final ALPHA_BITS : Int;
			final DEPTH_BITS : Int;
			final STENCIL_BITS : Int;
			final POLYGON_OFFSET_UNITS : Int;
			final POLYGON_OFFSET_FACTOR : Int;
			final TEXTURE_BINDING_2D : Int;
			final SAMPLE_BUFFERS : Int;
			final SAMPLES : Int;
			final SAMPLE_COVERAGE_VALUE : Int;
			final SAMPLE_COVERAGE_INVERT : Int;
			final COMPRESSED_TEXTURE_FORMATS : Int;
			final DONT_CARE : Int;
			final FASTEST : Int;
			final NICEST : Int;
			final GENERATE_MIPMAP_HINT : Int;
			final BYTE : Int;
			final UNSIGNED_BYTE : Int;
			final SHORT : Int;
			final UNSIGNED_SHORT : Int;
			final INT : Int;
			final UNSIGNED_INT : Int;
			final FLOAT : Int;
			final DEPTH_COMPONENT : Int;
			final ALPHA : Int;
			final RGB : Int;
			final RGBA : Int;
			final LUMINANCE : Int;
			final LUMINANCE_ALPHA : Int;
			final UNSIGNED_SHORT_4_4_4_4 : Int;
			final UNSIGNED_SHORT_5_5_5_1 : Int;
			final UNSIGNED_SHORT_5_6_5 : Int;
			final FRAGMENT_SHADER : Int;
			final VERTEX_SHADER : Int;
			final MAX_VERTEX_ATTRIBS : Int;
			final MAX_VERTEX_UNIFORM_VECTORS : Int;
			final MAX_VARYING_VECTORS : Int;
			final MAX_COMBINED_TEXTURE_IMAGE_UNITS : Int;
			final MAX_VERTEX_TEXTURE_IMAGE_UNITS : Int;
			final MAX_TEXTURE_IMAGE_UNITS : Int;
			final MAX_FRAGMENT_UNIFORM_VECTORS : Int;
			final SHADER_TYPE : Int;
			final DELETE_STATUS : Int;
			final LINK_STATUS : Int;
			final VALIDATE_STATUS : Int;
			final ATTACHED_SHADERS : Int;
			final ACTIVE_UNIFORMS : Int;
			final ACTIVE_ATTRIBUTES : Int;
			final SHADING_LANGUAGE_VERSION : Int;
			final CURRENT_PROGRAM : Int;
			final NEVER : Int;
			final LESS : Int;
			final EQUAL : Int;
			final LEQUAL : Int;
			final GREATER : Int;
			final NOTEQUAL : Int;
			final GEQUAL : Int;
			final ALWAYS : Int;
			final KEEP : Int;
			final REPLACE : Int;
			final INCR : Int;
			final DECR : Int;
			final INVERT : Int;
			final INCR_WRAP : Int;
			final DECR_WRAP : Int;
			final VENDOR : Int;
			final RENDERER : Int;
			final VERSION : Int;
			final NEAREST : Int;
			final LINEAR : Int;
			final NEAREST_MIPMAP_NEAREST : Int;
			final LINEAR_MIPMAP_NEAREST : Int;
			final NEAREST_MIPMAP_LINEAR : Int;
			final LINEAR_MIPMAP_LINEAR : Int;
			final TEXTURE_MAG_FILTER : Int;
			final TEXTURE_MIN_FILTER : Int;
			final TEXTURE_WRAP_S : Int;
			final TEXTURE_WRAP_T : Int;
			final TEXTURE_2D : Int;
			final TEXTURE : Int;
			final TEXTURE_CUBE_MAP : Int;
			final TEXTURE_BINDING_CUBE_MAP : Int;
			final TEXTURE_CUBE_MAP_POSITIVE_X : Int;
			final TEXTURE_CUBE_MAP_NEGATIVE_X : Int;
			final TEXTURE_CUBE_MAP_POSITIVE_Y : Int;
			final TEXTURE_CUBE_MAP_NEGATIVE_Y : Int;
			final TEXTURE_CUBE_MAP_POSITIVE_Z : Int;
			final TEXTURE_CUBE_MAP_NEGATIVE_Z : Int;
			final MAX_CUBE_MAP_TEXTURE_SIZE : Int;
			final TEXTURE0 : Int;
			final TEXTURE1 : Int;
			final TEXTURE2 : Int;
			final TEXTURE3 : Int;
			final TEXTURE4 : Int;
			final TEXTURE5 : Int;
			final TEXTURE6 : Int;
			final TEXTURE7 : Int;
			final TEXTURE8 : Int;
			final TEXTURE9 : Int;
			final TEXTURE10 : Int;
			final TEXTURE11 : Int;
			final TEXTURE12 : Int;
			final TEXTURE13 : Int;
			final TEXTURE14 : Int;
			final TEXTURE15 : Int;
			final TEXTURE16 : Int;
			final TEXTURE17 : Int;
			final TEXTURE18 : Int;
			final TEXTURE19 : Int;
			final TEXTURE20 : Int;
			final TEXTURE21 : Int;
			final TEXTURE22 : Int;
			final TEXTURE23 : Int;
			final TEXTURE24 : Int;
			final TEXTURE25 : Int;
			final TEXTURE26 : Int;
			final TEXTURE27 : Int;
			final TEXTURE28 : Int;
			final TEXTURE29 : Int;
			final TEXTURE30 : Int;
			final TEXTURE31 : Int;
			final ACTIVE_TEXTURE : Int;
			final REPEAT : Int;
			final CLAMP_TO_EDGE : Int;
			final MIRRORED_REPEAT : Int;
			final FLOAT_VEC2 : Int;
			final FLOAT_VEC3 : Int;
			final FLOAT_VEC4 : Int;
			final INT_VEC2 : Int;
			final INT_VEC3 : Int;
			final INT_VEC4 : Int;
			final BOOL : Int;
			final BOOL_VEC2 : Int;
			final BOOL_VEC3 : Int;
			final BOOL_VEC4 : Int;
			final FLOAT_MAT2 : Int;
			final FLOAT_MAT3 : Int;
			final FLOAT_MAT4 : Int;
			final SAMPLER_2D : Int;
			final SAMPLER_CUBE : Int;
			final VERTEX_ATTRIB_ARRAY_ENABLED : Int;
			final VERTEX_ATTRIB_ARRAY_SIZE : Int;
			final VERTEX_ATTRIB_ARRAY_STRIDE : Int;
			final VERTEX_ATTRIB_ARRAY_TYPE : Int;
			final VERTEX_ATTRIB_ARRAY_NORMALIZED : Int;
			final VERTEX_ATTRIB_ARRAY_POINTER : Int;
			final VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : Int;
			final IMPLEMENTATION_COLOR_READ_TYPE : Int;
			final IMPLEMENTATION_COLOR_READ_FORMAT : Int;
			final COMPILE_STATUS : Int;
			final LOW_FLOAT : Int;
			final MEDIUM_FLOAT : Int;
			final HIGH_FLOAT : Int;
			final LOW_INT : Int;
			final MEDIUM_INT : Int;
			final HIGH_INT : Int;
			final FRAMEBUFFER : Int;
			final RENDERBUFFER : Int;
			final RGBA4 : Int;
			final RGB5_A1 : Int;
			final RGBA8 : Int;
			final RGB565 : Int;
			final DEPTH_COMPONENT16 : Int;
			final STENCIL_INDEX8 : Int;
			final DEPTH_STENCIL : Int;
			final RENDERBUFFER_WIDTH : Int;
			final RENDERBUFFER_HEIGHT : Int;
			final RENDERBUFFER_INTERNAL_FORMAT : Int;
			final RENDERBUFFER_RED_SIZE : Int;
			final RENDERBUFFER_GREEN_SIZE : Int;
			final RENDERBUFFER_BLUE_SIZE : Int;
			final RENDERBUFFER_ALPHA_SIZE : Int;
			final RENDERBUFFER_DEPTH_SIZE : Int;
			final RENDERBUFFER_STENCIL_SIZE : Int;
			final FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : Int;
			final FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : Int;
			final FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : Int;
			final FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : Int;
			final COLOR_ATTACHMENT0 : Int;
			final DEPTH_ATTACHMENT : Int;
			final STENCIL_ATTACHMENT : Int;
			final DEPTH_STENCIL_ATTACHMENT : Int;
			final NONE : Int;
			final FRAMEBUFFER_COMPLETE : Int;
			final FRAMEBUFFER_INCOMPLETE_ATTACHMENT : Int;
			final FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : Int;
			final FRAMEBUFFER_INCOMPLETE_DIMENSIONS : Int;
			final FRAMEBUFFER_UNSUPPORTED : Int;
			final FRAMEBUFFER_BINDING : Int;
			final RENDERBUFFER_BINDING : Int;
			final MAX_RENDERBUFFER_SIZE : Int;
			final INVALID_FRAMEBUFFER_OPERATION : Int;
			final UNPACK_FLIP_Y_WEBGL : Int;
			final UNPACK_PREMULTIPLY_ALPHA_WEBGL : Int;
			final CONTEXT_LOST_WEBGL : Int;
			final UNPACK_COLORSPACE_CONVERSION_WEBGL : Int;
			final BROWSER_DEFAULT_WEBGL : Int;
		};
		/**
			The **`WebGLSampler`** interface is part of the WebGL 2 API and stores sampling parameters for WebGLTexture access inside of a shader.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLSampler)
		**/
		var WebGLSampler : {
			var prototype : js.html.webgl.Sampler;
		};
		/**
			The **WebGLShader** is part of the WebGL API and can either be a vertex or a fragment shader.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLShader)
		**/
		var WebGLShader : {
			var prototype : js.html.webgl.Shader;
		};
		/**
			The **WebGLShaderPrecisionFormat** interface is part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getShaderPrecisionFormat() method.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLShaderPrecisionFormat)
		**/
		var WebGLShaderPrecisionFormat : {
			var prototype : js.html.webgl.ShaderPrecisionFormat;
		};
		/**
			The **`WebGLSync`** interface is part of the WebGL 2 API and is used to synchronize activities between the GPU and the application.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLSync)
		**/
		var WebGLSync : {
			var prototype : js.html.webgl.Sync;
		};
		/**
			The **WebGLTexture** interface is part of the WebGL API and represents an opaque texture object providing storage and state for texturing operations.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLTexture)
		**/
		var WebGLTexture : {
			var prototype : js.html.webgl.Texture;
		};
		/**
			The **`WebGLTransformFeedback`** interface is part of the WebGL 2 API and enables transform feedback, which is the process of capturing primitives generated by vertex processing.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLTransformFeedback)
		**/
		var WebGLTransformFeedback : {
			var prototype : js.html.webgl.TransformFeedback;
		};
		/**
			The **WebGLUniformLocation** interface is part of the WebGL API and represents the location of a uniform variable in a shader program.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLUniformLocation)
		**/
		var WebGLUniformLocation : {
			var prototype : js.html.webgl.UniformLocation;
		};
		/**
			The **`WebGLVertexArrayObject`** interface is part of the WebGL 2 API, represents vertex array objects (VAOs) pointing to vertex array data, and provides names for different sets of vertex data.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebGLVertexArrayObject)
		**/
		var WebGLVertexArrayObject : {
			var prototype : js.html.webgl.VertexArrayObject;
		};
		/**
			The `WebSocket` object provides the API for creating and managing a WebSocket connection to a server, as well as for sending and receiving data on the connection.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebSocket)
		**/
		var WebSocket : {
			var prototype : js.html.WebSocket;
			final CONNECTING : Int;
			final OPEN : Int;
			final CLOSING : Int;
			final CLOSED : Int;
		};
		/**
			The **`WebTransport`** interface of the WebTransport API provides functionality to enable a user agent to connect to an HTTP/3 server, initiate reliable and unreliable transport in either or both directions, and close the connection once it is no longer needed.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransport)
		**/
		var WebTransport : {
			var prototype : js.html.WebTransport;
		};
		/**
			The **`WebTransportBidirectionalStream`** interface of the WebTransport API represents a bidirectional stream created by a server or a client that can be used for reliable transport.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportBidirectionalStream)
		**/
		var WebTransportBidirectionalStream : {
			var prototype : js.html.WebTransportBidirectionalStream;
		};
		/**
			The **`WebTransportDatagramDuplexStream`** interface of the WebTransport API represents a duplex stream that can be used for unreliable transport of datagrams between client and server.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportDatagramDuplexStream)
		**/
		var WebTransportDatagramDuplexStream : {
			var prototype : js.html.WebTransportDatagramDuplexStream;
		};
		/**
			The **`WebTransportError`** interface of the WebTransport API represents an error related to the API, which can arise from server errors, network connection problems, or client-initiated abort operations (for example, arising from a WritableStream.abort() call).
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WebTransportError)
		**/
		var WebTransportError : {
			var prototype : js.html.WebTransportError;
		};
		/**
			The **`WheelEvent`** interface represents events that occur due to the user moving a mouse wheel or similar input device.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WheelEvent)
		**/
		var WheelEvent : {
			var prototype : js.html.WheelEvent;
			final DOM_DELTA_PIXEL : Int;
			final DOM_DELTA_LINE : Int;
			final DOM_DELTA_PAGE : Int;
		};
		/**
			The **`Window`** interface represents a window containing a DOM document; the `document` property points to the DOM document loaded in that window.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window)
		**/
		var Window : {
			var prototype : js.html.Window;
		};
		/**
			The **`Worker`** interface of the Web Workers API represents a background task that can be created via script, which can send messages back to its creator.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Worker)
		**/
		var Worker : {
			var prototype : js.html.Worker;
		};
		/**
			The **`Worklet`** interface is a lightweight version of Web Workers and gives developers access to low-level parts of the rendering pipeline.
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Worklet)
		**/
		var Worklet : {
			var prototype : js.html.Worklet;
		};
		/**
			The **`WritableStream`** interface of the Streams API provides a standard abstraction for writing streaming data to a destination, known as a sink.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream)
		**/
		var WritableStream : {
			var prototype : js.html.WritableStream<Dynamic>;
		};
		/**
			The **`WritableStreamDefaultController`** interface of the Streams API represents a controller allowing control of a WritableStream's state.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController)
		**/
		var WritableStreamDefaultController : {
			var prototype : js.html.WritableStreamDefaultController;
		};
		/**
			The **`WritableStreamDefaultWriter`** interface of the Streams API is the object returned by WritableStream.getWriter() and once created locks the writer to the `WritableStream` ensuring that no other streams can write to the underlying sink.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultWriter)
		**/
		var WritableStreamDefaultWriter : {
			var prototype : js.html.WritableStreamDefaultWriter<Dynamic>;
		};
		/**
			The **XMLDocument** interface represents an XML document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLDocument)
		**/
		var XMLDocument : {
			var prototype : js.html.XMLDocument;
		};
		/**
			`XMLHttpRequest` (XHR) objects are used to interact with servers.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest)
		**/
		var XMLHttpRequest : {
			var prototype : js.html.XMLHttpRequest;
			final UNSENT : Int;
			final OPENED : Int;
			final HEADERS_RECEIVED : Int;
			final LOADING : Int;
			final DONE : Int;
		};
		/**
			`XMLHttpRequestEventTarget` is the interface that describes the event handlers shared on XMLHttpRequest and XMLHttpRequestUpload.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequestEventTarget)
		**/
		var XMLHttpRequestEventTarget : {
			var prototype : js.html.XMLHttpRequestEventTarget;
		};
		/**
			The **`XMLHttpRequestUpload`** interface represents the upload process for a specific XMLHttpRequest.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequestUpload)
		**/
		var XMLHttpRequestUpload : {
			var prototype : js.html.XMLHttpRequestUpload;
		};
		/**
			The `XMLSerializer` interface provides the XMLSerializer.serializeToString method to construct an XML string representing a DOM tree.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLSerializer)
		**/
		var XMLSerializer : {
			var prototype : js.html.XMLSerializer;
		};
		/**
			The `XPathEvaluator` interface allows to compile and evaluate XPath expressions.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XPathEvaluator)
		**/
		var XPathEvaluator : {
			var prototype : js.html.XPathEvaluator;
		};
		/**
			This interface is a compiled XPath expression that can be evaluated on a document or specific node to return information from its DOM tree.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XPathExpression)
		**/
		var XPathExpression : {
			var prototype : js.html.XPathExpression;
		};
		/**
			The **`XPathResult`** interface represents the results generated by evaluating an XPath expression within the context of a given node.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XPathResult)
		**/
		var XPathResult : {
			var prototype : js.html.XPathResult;
			final ANY_TYPE : Int;
			final NUMBER_TYPE : Int;
			final STRING_TYPE : Int;
			final BOOLEAN_TYPE : Int;
			final UNORDERED_NODE_ITERATOR_TYPE : Int;
			final ORDERED_NODE_ITERATOR_TYPE : Int;
			final UNORDERED_NODE_SNAPSHOT_TYPE : Int;
			final ORDERED_NODE_SNAPSHOT_TYPE : Int;
			final ANY_UNORDERED_NODE_TYPE : Int;
			final FIRST_ORDERED_NODE_TYPE : Int;
		};
		/**
			An **`XSLTProcessor`** applies an XSLT stylesheet transformation to an XML document to produce a new XML document as output.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/XSLTProcessor)
		**/
		var XSLTProcessor : {
			var prototype : js.html.XSLTProcessor;
		};
		/**
			The `console` module provides a simple debugging console that is similar to the
			JavaScript console mechanism provided by web browsers.
			
			The module exports two specific components:
			
			* A `Console` class with methods such as `console.log()`, `console.error()` and `console.warn()` that can be used to write to any Node.js stream.
			* A global `console` instance configured to write to [`process.stdout`](https://nodejs.org/docs/latest-v20.x/api/process.html#processstdout) and
			[`process.stderr`](https://nodejs.org/docs/latest-v20.x/api/process.html#processstderr). The global `console` can be used without importing the `node:console` module.
			
			_**Warning**_: The global console object's methods are neither consistently
			synchronous like the browser APIs they resemble, nor are they consistently
			asynchronous like all other Node.js streams. See the [`note on process I/O`](https://nodejs.org/docs/latest-v20.x/api/process.html#a-note-on-process-io) for
			more information.
			
			Example using the global `console`:
			
			```js
			console.log('hello world');
			// Prints: hello world, to stdout
			console.log('hello %s', 'world');
			// Prints: hello world, to stdout
			console.error(new Error('Whoops, something bad happened'));
			// Prints error message and stack trace to stderr:
			//   Error: Whoops, something bad happened
			//     at [eval]:5:15
			//     at Script.runInThisContext (node:vm:132:18)
			//     at Object.runInThisContext (node:vm:309:38)
			//     at node:internal/process/execution:77:19
			//     at [eval]-wrapper:6:22
			//     at evalScript (node:internal/process/execution:76:60)
			//     at node:internal/main/eval_string:23:3
			
			const name = 'Will Robinson';
			console.warn(`Danger ${name}! Danger!`);
			// Prints: Danger Will Robinson! Danger!, to stderr
			```
			
			Example using the `Console` class:
			
			```js
			const out = getStreamSomehow();
			const err = getStreamSomehow();
			const myConsole = new console.Console(out, err);
			
			myConsole.log('hello world');
			// Prints: hello world, to out
			myConsole.log('hello %s', 'world');
			// Prints: hello world, to out
			myConsole.error(new Error('Whoops, something bad happened'));
			// Prints: [Error: Whoops, something bad happened], to err
			
			const name = 'Will Robinson';
			myConsole.warn(`Danger ${name}! Danger!`);
			// Prints: Danger Will Robinson! Danger!, to err
			```
		**/
		var console : js.html.Console;
		var Audio : { };
		var Image : { };
		var Option : { };
		var clientInformation : js.html.Navigator;
		/**
			The **`Window.closed`** read-only property indicates whether the referenced window is closed or not.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/closed)
		**/
		var closed : Bool;
		/**
			The **`cookieStore`** read-only property of the Window interface returns a reference to the CookieStore object for the current document context.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/cookieStore)
		**/
		var cookieStore : js.html.CookieStore;
		/**
			The **`customElements`** read-only property of the Window interface returns a reference to the CustomElementRegistry object, which can be used to register new custom elements and get information about previously registered custom elements.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/customElements)
		**/
		var customElements : js.html.CustomElementRegistry;
		/**
			The **`devicePixelRatio`** of Window interface returns the ratio of the resolution in _physical pixels_ to the resolution in _CSS pixels_ for the current display device.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/devicePixelRatio)
		**/
		var devicePixelRatio : Float;
		/**
			**`window.document`** returns a reference to the document contained in the window.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/document)
		**/
		var document : js.html.Document;
		/**
			The read-only Window property **`event`** returns the Event which is currently being handled by the site's code.
		**/
		var event : Null<js.html.Event>;
		/**
			The `external` property of the Window API returns an instance of the `External` interface, which was intended to contain functions related to adding external search providers to the browser.
		**/
		var external : js.html.External;
		/**
			The **`Window.frameElement`** property returns the element (such as iframe or object) in which the window is embedded.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/frameElement)
		**/
		var frameElement : Null<js.html.DOMElement>;
		/**
			Returns the window itself, which is an array-like object, listing the direct sub-frames of the current window.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/frames)
		**/
		var frames : js.html.Window;
		/**
			The `Window.history` read-only property returns a reference to the History object, which provides an interface for manipulating the browser _session history_ (pages visited in the tab or frame that the current page is loaded in).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/history)
		**/
		var history : js.html.History;
		/**
			The read-only **`innerHeight`** property of the including the height of the horizontal scroll bar, if present.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/innerHeight)
		**/
		var innerHeight : Float;
		/**
			The read-only Window property **`innerWidth`** returns the interior width of the window in pixels (that is, the width of the window's layout viewport).
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/innerWidth)
		**/
		var innerWidth : Float;
		/**
			Returns the number of frames (either frame or A number.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/length)
		**/
		var length : Float;
		/**
			The **`Window.location`** read-only property returns a Location object with information about the current location of the document.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/location)
		**/
		var location : js.html.Location;
		/**
			Returns the `locationbar` object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/locationbar)
		**/
		var locationbar : js.html.BarProp;
		/**
			Returns the `menubar` object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/menubar)
		**/
		var menubar : js.html.BarProp;
		/**
			The **`Window.navigator`** read-only property returns a reference to the Navigator object, which has methods and properties about the application running the script.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/navigator)
		**/
		var navigator : js.html.Navigator;
		/**
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/devicemotion_event)
		**/
		@:optional
		dynamic function ondevicemotion(ev:js.html.DeviceMotionEvent):Dynamic;
		/**
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/deviceorientation_event)
		**/
		@:optional
		dynamic function ondeviceorientation(ev:js.html.DeviceOrientationEvent):Dynamic;
		/**
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/deviceorientationabsolute_event)
		**/
		@:optional
		dynamic function ondeviceorientationabsolute(ev:js.html.DeviceOrientationEvent):Dynamic;
		@:optional
		dynamic function onorientationchange(ev:js.html.Event):Dynamic;
		/**
			The Window interface's **`opener`** property returns a reference to the window that opened the window, either with Window.open, or by navigating a link with a `target` attribute.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/opener)
		**/
		var opener : Dynamic;
		/**
			Returns the orientation in degrees (in 90-degree increments) of the viewport relative to the device's natural orientation.
		**/
		var orientation : Float;
		/**
			The **`originAgentCluster`** read-only property of the Window interface returns `true` if this window belongs to an _origin-keyed agent cluster_: this means that the operating system has provided dedicated resources (for example an operating system process) to this window's origin that are not shared with windows from other origins.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/originAgentCluster)
		**/
		var originAgentCluster : Bool;
		/**
			The **`Window.outerHeight`** read-only property returns the height in pixels of the whole browser window, including any sidebar, window chrome, and window-resizing borders/handles.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/outerHeight)
		**/
		var outerHeight : Float;
		/**
			**`Window.outerWidth`** read-only property returns the width of the outside of the browser window.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/outerWidth)
		**/
		var outerWidth : Float;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollX)
		**/
		var pageXOffset : Float;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollY)
		**/
		var pageYOffset : Float;
		/**
			The **`Window.parent`** property is a reference to the parent of the current window or subframe.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/parent)
		**/
		var parent : js.html.Window;
		/**
			Returns the `personalbar` object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/personalbar)
		**/
		var personalbar : js.html.BarProp;
		/**
			The Window property **`screen`** returns a reference to the screen object associated with the window.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screen)
		**/
		var screen : js.html.Screen;
		/**
			The **`Window.screenLeft`** read-only property returns the horizontal distance, in CSS pixels, from the left border of the user's browser viewport to the left side of the screen.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screenLeft)
		**/
		var screenLeft : Float;
		/**
			The **`Window.screenTop`** read-only property returns the vertical distance, in CSS pixels, from the top border of the user's browser viewport to the top side of the screen.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screenTop)
		**/
		var screenTop : Float;
		/**
			The **`Window.screenX`** read-only property returns the horizontal distance, in CSS pixels, of the left border of the user's browser viewport to the left side of the screen.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screenX)
		**/
		var screenX : Float;
		/**
			The **`Window.screenY`** read-only property returns the vertical distance, in CSS pixels, of the top border of the user's browser viewport to the top edge of the screen.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/screenY)
		**/
		var screenY : Float;
		/**
			The read-only **`scrollX`** property of the Window interface returns the number of pixels by which the document is currently scrolled horizontally.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollX)
		**/
		var scrollX : Float;
		/**
			The read-only **`scrollY`** property of the Window interface returns the number of pixels by which the document is currently scrolled vertically.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollY)
		**/
		var scrollY : Float;
		/**
			Returns the `scrollbars` object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/scrollbars)
		**/
		var scrollbars : js.html.BarProp;
		/**
			The **`Window.self`** read-only property returns the window itself, as a WindowProxy.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/self)
		**/
		var self : js.html.IWindow & Dynamic;
		/**
			The `speechSynthesis` read-only property of the Window object returns a SpeechSynthesis object, which is the entry point into using Web Speech API speech synthesis functionality.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/speechSynthesis)
		**/
		var speechSynthesis : js.html.SpeechSynthesis;
		/**
			The **`status`** property of the bar at the bottom of the browser window.
		**/
		var status : String;
		/**
			Returns the `statusbar` object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/statusbar)
		**/
		var statusbar : js.html.BarProp;
		/**
			Returns the `toolbar` object.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/toolbar)
		**/
		var toolbar : js.html.BarProp;
		/**
			Returns a reference to the topmost window in the window hierarchy.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/top)
		**/
		var top : Null<js.html.Window>;
		/**
			The **`visualViewport`** read-only property of the Window interface returns a VisualViewport object representing the visual viewport for a given window, or `null` if current document is not fully active.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/visualViewport)
		**/
		var visualViewport : Null<js.html.VisualViewport>;
		/**
			The **`window`** property of a Window object points to the window object itself.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/window)
		**/
		var window : Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/abort_event)
		**/
		@:optional
		dynamic function onabort(ev:js.html.UIEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationcancel_event)
		**/
		@:optional
		dynamic function onanimationcancel(ev:js.html.AnimationEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationend_event)
		**/
		@:optional
		dynamic function onanimationend(ev:js.html.AnimationEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationiteration_event)
		**/
		@:optional
		dynamic function onanimationiteration(ev:js.html.AnimationEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/animationstart_event)
		**/
		@:optional
		dynamic function onanimationstart(ev:js.html.AnimationEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/auxclick_event)
		**/
		@:optional
		dynamic function onauxclick(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/beforeinput_event)
		**/
		@:optional
		dynamic function onbeforeinput(ev:js.html.InputEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/beforematch_event)
		**/
		@:optional
		dynamic function onbeforematch(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/beforetoggle_event)
		**/
		@:optional
		dynamic function onbeforetoggle(ev:js.html.ToggleEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/blur_event)
		**/
		@:optional
		dynamic function onblur(ev:js.html.FocusEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/cancel_event)
		**/
		@:optional
		dynamic function oncancel(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/canplay_event)
		**/
		@:optional
		dynamic function oncanplay(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/canplaythrough_event)
		**/
		@:optional
		dynamic function oncanplaythrough(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/change_event)
		**/
		@:optional
		dynamic function onchange(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/click_event)
		**/
		@:optional
		dynamic function onclick(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLDialogElement/close_event)
		**/
		@:optional
		dynamic function onclose(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/contextlost_event)
		**/
		@:optional
		dynamic function oncontextlost(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/contextmenu_event)
		**/
		@:optional
		dynamic function oncontextmenu(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLCanvasElement/contextrestored_event)
		**/
		@:optional
		dynamic function oncontextrestored(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/copy_event)
		**/
		@:optional
		dynamic function oncopy(ev:js.html.ClipboardEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLTrackElement/cuechange_event)
		**/
		@:optional
		dynamic function oncuechange(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/cut_event)
		**/
		@:optional
		dynamic function oncut(ev:js.html.ClipboardEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/dblclick_event)
		**/
		@:optional
		dynamic function ondblclick(ev:js.html.MouseEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/drag_event)
		**/
		@:optional
		dynamic function ondrag(ev:js.html.DragEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragend_event)
		**/
		@:optional
		dynamic function ondragend(ev:js.html.DragEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragenter_event)
		**/
		@:optional
		dynamic function ondragenter(ev:js.html.DragEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragleave_event)
		**/
		@:optional
		dynamic function ondragleave(ev:js.html.DragEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragover_event)
		**/
		@:optional
		dynamic function ondragover(ev:js.html.DragEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/dragstart_event)
		**/
		@:optional
		dynamic function ondragstart(ev:js.html.DragEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/drop_event)
		**/
		@:optional
		dynamic function ondrop(ev:js.html.DragEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/durationchange_event)
		**/
		@:optional
		dynamic function ondurationchange(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/emptied_event)
		**/
		@:optional
		dynamic function onemptied(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/ended_event)
		**/
		@:optional
		dynamic function onended(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/error_event)
		**/
		@:optional
		dynamic function onerror(event:ts.AnyOf2<String, js.html.Event>, ?source:String, ?lineno:Float, ?colno:Float, ?error:js.lib.Error):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/focus_event)
		**/
		@:optional
		dynamic function onfocus(ev:js.html.FocusEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/formdata_event)
		**/
		@:optional
		dynamic function onformdata(ev:js.html.FormDataEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/gotpointercapture_event)
		**/
		@:optional
		dynamic function ongotpointercapture(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/input_event)
		**/
		@:optional
		dynamic function oninput(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/invalid_event)
		**/
		@:optional
		dynamic function oninvalid(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/keydown_event)
		**/
		@:optional
		dynamic function onkeydown(ev:js.html.KeyboardEvent):Dynamic;
		@:optional
		dynamic function onkeypress(ev:js.html.KeyboardEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/keyup_event)
		**/
		@:optional
		dynamic function onkeyup(ev:js.html.KeyboardEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/load_event)
		**/
		@:optional
		dynamic function onload(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadeddata_event)
		**/
		@:optional
		dynamic function onloadeddata(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadedmetadata_event)
		**/
		@:optional
		dynamic function onloadedmetadata(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/loadstart_event)
		**/
		@:optional
		dynamic function onloadstart(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/lostpointercapture_event)
		**/
		@:optional
		dynamic function onlostpointercapture(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mousedown_event)
		**/
		@:optional
		dynamic function onmousedown(ev:js.html.MouseEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseenter_event)
		**/
		@:optional
		dynamic function onmouseenter(ev:js.html.MouseEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseleave_event)
		**/
		@:optional
		dynamic function onmouseleave(ev:js.html.MouseEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mousemove_event)
		**/
		@:optional
		dynamic function onmousemove(ev:js.html.MouseEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseout_event)
		**/
		@:optional
		dynamic function onmouseout(ev:js.html.MouseEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseover_event)
		**/
		@:optional
		dynamic function onmouseover(ev:js.html.MouseEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/mouseup_event)
		**/
		@:optional
		dynamic function onmouseup(ev:js.html.MouseEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/paste_event)
		**/
		@:optional
		dynamic function onpaste(ev:js.html.ClipboardEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/pause_event)
		**/
		@:optional
		dynamic function onpause(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/play_event)
		**/
		@:optional
		dynamic function onplay(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/playing_event)
		**/
		@:optional
		dynamic function onplaying(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointercancel_event)
		**/
		@:optional
		dynamic function onpointercancel(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerdown_event)
		**/
		@:optional
		dynamic function onpointerdown(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerenter_event)
		**/
		@:optional
		dynamic function onpointerenter(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerleave_event)
		**/
		@:optional
		dynamic function onpointerleave(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointermove_event)
		**/
		@:optional
		dynamic function onpointermove(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerout_event)
		**/
		@:optional
		dynamic function onpointerout(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerover_event)
		**/
		@:optional
		dynamic function onpointerover(ev:js.html.PointerEvent):Dynamic;
		/**
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerrawupdate_event)
		**/
		@:optional
		dynamic function onpointerrawupdate(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/pointerup_event)
		**/
		@:optional
		dynamic function onpointerup(ev:js.html.PointerEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/progress_event)
		**/
		@:optional
		dynamic function onprogress(ev:js.html.ProgressEvent_<js.html.EventTarget>):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/ratechange_event)
		**/
		@:optional
		dynamic function onratechange(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/reset_event)
		**/
		@:optional
		dynamic function onreset(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLVideoElement/resize_event)
		**/
		@:optional
		dynamic function onresize(ev:js.html.UIEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/scroll_event)
		**/
		@:optional
		dynamic function onscroll(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/scrollend_event)
		**/
		@:optional
		dynamic function onscrollend(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/securitypolicyviolation_event)
		**/
		@:optional
		dynamic function onsecuritypolicyviolation(ev:js.html.SecurityPolicyViolationEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/seeked_event)
		**/
		@:optional
		dynamic function onseeked(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/seeking_event)
		**/
		@:optional
		dynamic function onseeking(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLInputElement/select_event)
		**/
		@:optional
		dynamic function onselect(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Document/selectionchange_event)
		**/
		@:optional
		dynamic function onselectionchange(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Node/selectstart_event)
		**/
		@:optional
		dynamic function onselectstart(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLSlotElement/slotchange_event)
		**/
		@:optional
		dynamic function onslotchange(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/stalled_event)
		**/
		@:optional
		dynamic function onstalled(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLFormElement/submit_event)
		**/
		@:optional
		dynamic function onsubmit(ev:js.html.SubmitEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/suspend_event)
		**/
		@:optional
		dynamic function onsuspend(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/timeupdate_event)
		**/
		@:optional
		dynamic function ontimeupdate(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLElement/toggle_event)
		**/
		@:optional
		dynamic function ontoggle(ev:js.html.ToggleEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchcancel_event)
		**/
		@:optional
		dynamic function ontouchcancel(ev:js.html.TouchEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchend_event)
		**/
		@:optional
		dynamic function ontouchend(ev:js.html.TouchEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchmove_event)
		**/
		@:optional
		dynamic function ontouchmove(ev:js.html.TouchEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/touchstart_event)
		**/
		@:optional
		dynamic function ontouchstart(ev:js.html.TouchEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitioncancel_event)
		**/
		@:optional
		dynamic function ontransitioncancel(ev:js.html.TransitionEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionend_event)
		**/
		@:optional
		dynamic function ontransitionend(ev:js.html.TransitionEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionrun_event)
		**/
		@:optional
		dynamic function ontransitionrun(ev:js.html.TransitionEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/transitionstart_event)
		**/
		@:optional
		dynamic function ontransitionstart(ev:js.html.TransitionEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/volumechange_event)
		**/
		@:optional
		dynamic function onvolumechange(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/HTMLMediaElement/waiting_event)
		**/
		@:optional
		dynamic function onwaiting(ev:js.html.Event):Dynamic;
		@:optional
		dynamic function onwebkitanimationend(ev:js.html.Event):Dynamic;
		@:optional
		dynamic function onwebkitanimationiteration(ev:js.html.Event):Dynamic;
		@:optional
		dynamic function onwebkitanimationstart(ev:js.html.Event):Dynamic;
		@:optional
		dynamic function onwebkittransitionend(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Element/wheel_event)
		**/
		@:optional
		dynamic function onwheel(ev:js.html.WheelEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/afterprint_event)
		**/
		@:optional
		dynamic function onafterprint(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/beforeprint_event)
		**/
		@:optional
		dynamic function onbeforeprint(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/beforeunload_event)
		**/
		@:optional
		dynamic function onbeforeunload(ev:js.html.BeforeUnloadEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/gamepadconnected_event)
		**/
		@:optional
		dynamic function ongamepadconnected(ev:js.html.GamepadEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/gamepaddisconnected_event)
		**/
		@:optional
		dynamic function ongamepaddisconnected(ev:js.html.GamepadEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/hashchange_event)
		**/
		@:optional
		dynamic function onhashchange(ev:js.html.HashChangeEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/languagechange_event)
		**/
		@:optional
		dynamic function onlanguagechange(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/message_event)
		**/
		@:optional
		dynamic function onmessage(ev:js.html.MessageEvent_<Dynamic>):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/messageerror_event)
		**/
		@:optional
		dynamic function onmessageerror(ev:js.html.MessageEvent_<Dynamic>):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/offline_event)
		**/
		@:optional
		dynamic function onoffline(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/online_event)
		**/
		@:optional
		dynamic function ononline(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/pagehide_event)
		**/
		@:optional
		dynamic function onpagehide(ev:js.html.PageTransitionEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/pagereveal_event)
		**/
		@:optional
		dynamic function onpagereveal(ev:js.html.PageRevealEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/pageshow_event)
		**/
		@:optional
		dynamic function onpageshow(ev:js.html.PageTransitionEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/pageswap_event)
		**/
		@:optional
		dynamic function onpageswap(ev:js.html.PageSwapEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/popstate_event)
		**/
		@:optional
		dynamic function onpopstate(ev:js.html.PopStateEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/rejectionhandled_event)
		**/
		@:optional
		dynamic function onrejectionhandled(ev:js.html.PromiseRejectionEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/storage_event)
		**/
		@:optional
		dynamic function onstorage(ev:js.html.StorageEvent):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/unhandledrejection_event)
		**/
		@:optional
		dynamic function onunhandledrejection(ev:js.html.PromiseRejectionEvent):Dynamic;
		@:optional
		dynamic function onunload(ev:js.html.Event):Dynamic;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/localStorage)
		**/
		var localStorage : js.html.Storage;
		/**
			Available only in secure contexts.
			
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/caches)
		**/
		var caches : js.html.CacheStorage;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/crossOriginIsolated)
		**/
		var crossOriginIsolated : Bool;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/crypto)
		**/
		var crypto : js.html.Crypto;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/indexedDB)
		**/
		var indexedDB : js.html.idb.Factory;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/isSecureContext)
		**/
		var isSecureContext : Bool;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/origin)
		**/
		var origin : String;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/performance)
			
			`performance` is a global reference for `import { performance } from 'node:node:perf_hooks'`
		**/
		var performance : js.html.Performance;
		/**
			[MDN Reference](https://developer.mozilla.org/docs/Web/API/Window/sessionStorage)
		**/
		var sessionStorage : js.html.Storage;
		function importScripts(urls:haxe.extern.Rest<String>):Void;
		var ActiveXObject : js.lib.ActiveXObject;
		var WScript : {
			/**
				Outputs text to either a message box (under WScript.exe) or the command console window followed by
				a newline (under CScript.exe).
			**/
			function Echo(s:Dynamic):Void;
			/**
				Exposes the write-only error output stream for the current script.
				Can be accessed only while using CScript.exe.
			**/
			var StdErr : js.lib.TextStreamWriter;
			/**
				Exposes the write-only output stream for the current script.
				Can be accessed only while using CScript.exe.
			**/
			var StdOut : js.lib.TextStreamWriter;
			var Arguments : {
				var length : Float;
				function Item(n:Float):String;
			};
			/**
				The full path of the currently running script.
			**/
			var ScriptFullName : String;
			/**
				Forces the script to stop immediately, with an optional exit code.
			**/
			function Quit(?exitCode:Float):Float;
			/**
				The Windows Script Host build version number.
			**/
			var BuildVersion : Float;
			/**
				Fully qualified path of the host executable.
			**/
			var FullName : String;
			/**
				Gets/sets the script mode - interactive(true) or batch(false).
			**/
			var Interactive : Bool;
			/**
				The name of the host executable (WScript.exe or CScript.exe).
			**/
			var Name : String;
			/**
				Path of the directory containing the host executable.
			**/
			var Path : String;
			/**
				The filename of the currently running script.
			**/
			var ScriptName : String;
			/**
				Exposes the read-only input stream for the current script.
				Can be accessed only while using CScript.exe.
			**/
			var StdIn : js.lib.TextStreamReader;
			/**
				Windows Script Host version
			**/
			var Version : String;
			/**
				Connects a COM object's event sources to functions named with a given prefix, in the form prefix_event.
			**/
			function ConnectObject(objEventSource:Dynamic, strPrefix:String):Void;
			/**
				Creates a COM object.
			**/
			function CreateObject(strProgID:String, ?strPrefix:String):Dynamic;
			/**
				Disconnects a COM object from its event sources.
			**/
			function DisconnectObject(obj:Dynamic):Void;
			/**
				Retrieves an existing object with the specified ProgID from memory, or creates a new one from a file.
			**/
			function GetObject(strPathname:String, ?strProgID:String, ?strPrefix:String):Dynamic;
			/**
				Suspends script execution for a specified length of time, then continues execution.
			**/
			function Sleep(intTime:Float):Void;
		};
		/**
			WSH is an alias for WScript under Windows Script Host
		**/
		var WSH : {
			/**
				Outputs text to either a message box (under WScript.exe) or the command console window followed by
				a newline (under CScript.exe).
			**/
			function Echo(s:Dynamic):Void;
			/**
				Exposes the write-only error output stream for the current script.
				Can be accessed only while using CScript.exe.
			**/
			var StdErr : js.lib.TextStreamWriter;
			/**
				Exposes the write-only output stream for the current script.
				Can be accessed only while using CScript.exe.
			**/
			var StdOut : js.lib.TextStreamWriter;
			var Arguments : {
				var length : Float;
				function Item(n:Float):String;
			};
			/**
				The full path of the currently running script.
			**/
			var ScriptFullName : String;
			/**
				Forces the script to stop immediately, with an optional exit code.
			**/
			function Quit(?exitCode:Float):Float;
			/**
				The Windows Script Host build version number.
			**/
			var BuildVersion : Float;
			/**
				Fully qualified path of the host executable.
			**/
			var FullName : String;
			/**
				Gets/sets the script mode - interactive(true) or batch(false).
			**/
			var Interactive : Bool;
			/**
				The name of the host executable (WScript.exe or CScript.exe).
			**/
			var Name : String;
			/**
				Path of the directory containing the host executable.
			**/
			var Path : String;
			/**
				The filename of the currently running script.
			**/
			var ScriptName : String;
			/**
				Exposes the read-only input stream for the current script.
				Can be accessed only while using CScript.exe.
			**/
			var StdIn : js.lib.TextStreamReader;
			/**
				Windows Script Host version
			**/
			var Version : String;
			/**
				Connects a COM object's event sources to functions named with a given prefix, in the form prefix_event.
			**/
			function ConnectObject(objEventSource:Dynamic, strPrefix:String):Void;
			/**
				Creates a COM object.
			**/
			function CreateObject(strProgID:String, ?strPrefix:String):Dynamic;
			/**
				Disconnects a COM object from its event sources.
			**/
			function DisconnectObject(obj:Dynamic):Void;
			/**
				Retrieves an existing object with the specified ProgID from memory, or creates a new one from a file.
			**/
			function GetObject(strPathname:String, ?strProgID:String, ?strPrefix:String):Dynamic;
			/**
				Suspends script execution for a specified length of time, then continues execution.
			**/
			function Sleep(intTime:Float):Void;
		};
		/**
			Allows enumerating over a COM collection, which may not have indexed item access.
		**/
		var Enumerator : js.lib.EnumeratorConstructor;
		/**
			Enables reading from a COM safe array, which might have an alternate lower bound, or multiple dimensions.
		**/
		var VBArray : js.lib.VBArrayConstructor;
		var Map : js.lib.MapConstructor;
		var WeakMap : js.lib.WeakMapConstructor;
		var Set : js.lib.SetConstructor;
		var WeakSet : js.lib.WeakSetConstructor;
		var Proxy : js.lib.ProxyConstructor;
		var SharedArrayBuffer : js.lib.SharedArrayBufferConstructor;
		var Atomics : js.lib.Atomics;
		var BigInt : js.lib.BigIntConstructor;
		/**
			A typed array of 64-bit signed integer values. The contents are initialized to 0. If the
			requested number of bytes could not be allocated, an exception is raised.
		**/
		var BigInt64Array : js.lib.BigInt64ArrayConstructor;
		/**
			A typed array of 64-bit unsigned integer values. The contents are initialized to 0. If the
			requested number of bytes could not be allocated, an exception is raised.
		**/
		var BigUint64Array : js.lib.BigUint64ArrayConstructor;
		var global : Dynamic;
		var process : global.nodejs.Process;
		/**
			Enable this API with the `--expose-gc` CLI flag.
		**/
		@:optional
		@:overload(function(options:global.nodejs.GCOptions & { var execution : String; }):js.lib.Promise<ts.Undefined> { })
		@:overload(function(options:global.nodejs.GCOptions):Void { })
		dynamic function gc(?minor:Bool):Void;
		var Buffer : global.BufferConstructor;
		/**
			The directory name of the current module. This is the same as the
			`path.dirname()` of the `__filename`.
		**/
		var __dirname : String;
		/**
			The file name of the current module. This is the current module file's absolute
			path with symlinks resolved.
			
			For a main program this is not necessarily the same as the file name used in the
			command line.
		**/
		var __filename : String;
		/**
			The `exports` variable is available within a module's file-level scope, and is
			assigned the value of `module.exports` before the module is evaluated.
		**/
		var exports : Dynamic;
		/**
			A reference to the current module.
		**/
		var module : global.nodejs.Module;
		var require : global.nodejs.Require;
		/**
			Schedules the "immediate" execution of the `callback` after I/O events'
			callbacks.
			
			When multiple calls to `setImmediate()` are made, the `callback` functions are
			queued for execution in the order in which they are created. The entire callback
			queue is processed every event loop iteration. If an immediate timer is queued
			from inside an executing callback, that timer will not be triggered until the
			next event loop iteration.
			
			If `callback` is not a function, a `TypeError` will be thrown.
			
			This method has a custom variant for promises that is available using
			`timersPromises.setImmediate()`.
		**/
		@:overload(function(callback:(_:ts.Undefined) -> Void):global.nodejs.Immediate { })
		function setImmediate<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, args:haxe.extern.Rest<Any>):global.nodejs.Immediate;
		/**
			Cancels an `Immediate` object created by `setImmediate()`.
		**/
		function clearImmediate(immediate:Null<global.nodejs.Immediate>):Void;
		var undefined : Dynamic;
	};
	static var process : global.nodejs.Process;
	/**
		Enable this API with the `--expose-gc` CLI flag.
	**/
	@:optional
	@:overload(function(options:global.nodejs.GCOptions & { var execution : String; }):js.lib.Promise<ts.Undefined> { })
	@:overload(function(options:global.nodejs.GCOptions):Void { })
	dynamic static function gc(?minor:Bool):Void;
	/**
		The directory name of the current module. This is the same as the
		`path.dirname()` of the `__filename`.
	**/
	static var __dirname : String;
	/**
		The file name of the current module. This is the current module file's absolute
		path with symlinks resolved.
		
		For a main program this is not necessarily the same as the file name used in the
		command line.
	**/
	static var __filename : String;
	/**
		The `exports` variable is available within a module's file-level scope, and is
		assigned the value of `module.exports` before the module is evaluated.
	**/
	static var exports : Dynamic;
	/**
		A reference to the current module.
	**/
	static var module : global.nodejs.Module;
	static var require : global.nodejs.Require;
	/**
		Cancels an `Immediate` object created by `setImmediate()`.
	**/
	static function clearImmediate(immediate:Null<global.nodejs.Immediate>):Void;
	/**
		Schedules the "immediate" execution of the `callback` after I/O events'
		callbacks.
		
		When multiple calls to `setImmediate()` are made, the `callback` functions are
		queued for execution in the order in which they are created. The entire callback
		queue is processed every event loop iteration. If an immediate timer is queued
		from inside an executing callback, that timer will not be triggered until the
		next event loop iteration.
		
		If `callback` is not a function, a `TypeError` will be thrown.
		
		This method has a custom variant for promises that is available using
		`timersPromises.setImmediate()`.
	**/
	@:overload(function(callback:(_:ts.Undefined) -> Void):global.nodejs.Immediate { })
	static function setImmediate<TArgs:(Array<Dynamic>)>(callback:(args:haxe.extern.Rest<Any>) -> Void, args:haxe.extern.Rest<Any>):global.nodejs.Immediate;
}