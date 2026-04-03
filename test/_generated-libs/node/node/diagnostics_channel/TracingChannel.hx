package node.diagnostics_channel;

/**
	The class `TracingChannel` is a collection of `TracingChannel Channels` which
	together express a single traceable action. It is used to formalize and
	simplify the process of producing events for tracing application flow.
	{@link
	tracingChannel
	}
	is used to construct a `TracingChannel`. As with `Channel` it is recommended to create and reuse a
	single `TracingChannel` at the top-level of the file rather than creating them
	dynamically.
**/
@:jsRequire("diagnostics_channel", "TracingChannel") extern class TracingChannel<StoreType, ContextType> {
	function new();
	var start : Channel<StoreType, ContextType>;
	var end : Channel<StoreType, ContextType>;
	var asyncStart : Channel<StoreType, ContextType>;
	var asyncEnd : Channel<StoreType, ContextType>;
	var error : Channel<StoreType, ContextType>;
	/**
		Helper to subscribe a collection of functions to the corresponding channels.
		This is the same as calling `channel.subscribe(onMessage)` on each channel
		individually.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channels = diagnostics_channel.tracingChannel('my-channel');
		
		channels.subscribe({
		  start(message) {
		    // Handle start message
		  },
		  end(message) {
		    // Handle end message
		  },
		  asyncStart(message) {
		    // Handle asyncStart message
		  },
		  asyncEnd(message) {
		    // Handle asyncEnd message
		  },
		  error(message) {
		    // Handle error message
		  },
		});
		```
	**/
	function subscribe(subscribers:TracingChannelSubscribers<ContextType>):Void;
	/**
		Helper to unsubscribe a collection of functions from the corresponding channels.
		This is the same as calling `channel.unsubscribe(onMessage)` on each channel
		individually.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channels = diagnostics_channel.tracingChannel('my-channel');
		
		channels.unsubscribe({
		  start(message) {
		    // Handle start message
		  },
		  end(message) {
		    // Handle end message
		  },
		  asyncStart(message) {
		    // Handle asyncStart message
		  },
		  asyncEnd(message) {
		    // Handle asyncEnd message
		  },
		  error(message) {
		    // Handle error message
		  },
		});
		```
	**/
	function unsubscribe(subscribers:TracingChannelSubscribers<ContextType>):Void;
	/**
		Trace a synchronous function call. This will always produce a `start event` and `end event` around the execution and may produce an `error event` if the given function throws an error.
		This will run the given function using `channel.runStores(context, ...)` on the `start` channel which ensures all
		events should have any bound stores set to match this trace context.
		
		To ensure only correct trace graphs are formed, events will only be published if subscribers are present prior to starting the trace. Subscriptions
		which are added after the trace begins will not receive future events from that trace, only future traces will be seen.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channels = diagnostics_channel.tracingChannel('my-channel');
		
		channels.traceSync(() => {
		  // Do something
		}, {
		  some: 'thing',
		});
		```
	**/
	function traceSync<ThisArg, Args:(Array<Dynamic>), Result>(fn:(args:haxe.extern.Rest<Any>) -> Result, ?context:ContextType, ?thisArg:ThisArg, args:haxe.extern.Rest<Any>):Result;
	/**
		Trace a promise-returning function call. This will always produce a `start event` and `end event` around the synchronous portion of the
		function execution, and will produce an `asyncStart event` and `asyncEnd event` when a promise continuation is reached. It may also
		produce an `error event` if the given function throws an error or the
		returned promise rejects. This will run the given function using `channel.runStores(context, ...)` on the `start` channel which ensures all
		events should have any bound stores set to match this trace context.
		
		To ensure only correct trace graphs are formed, events will only be published if subscribers are present prior to starting the trace. Subscriptions
		which are added after the trace begins will not receive future events from that trace, only future traces will be seen.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channels = diagnostics_channel.tracingChannel('my-channel');
		
		channels.tracePromise(async () => {
		  // Do something
		}, {
		  some: 'thing',
		});
		```
	**/
	function tracePromise<ThisArg, Args:(Array<Dynamic>), Result>(fn:(args:haxe.extern.Rest<Any>) -> js.lib.Promise<Result>, ?context:ContextType, ?thisArg:ThisArg, args:haxe.extern.Rest<Any>):js.lib.Promise<Result>;
	/**
		Trace a callback-receiving function call. This will always produce a `start event` and `end event` around the synchronous portion of the
		function execution, and will produce a `asyncStart event` and `asyncEnd event` around the callback execution. It may also produce an `error event` if the given function throws an error or
		the returned
		promise rejects. This will run the given function using `channel.runStores(context, ...)` on the `start` channel which ensures all
		events should have any bound stores set to match this trace context.
		
		The `position` will be -1 by default to indicate the final argument should
		be used as the callback.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channels = diagnostics_channel.tracingChannel('my-channel');
		
		channels.traceCallback((arg1, callback) => {
		  // Do something
		  callback(null, 'result');
		}, 1, {
		  some: 'thing',
		}, thisArg, arg1, callback);
		```
		
		The callback will also be run with `channel.runStores(context, ...)` which
		enables context loss recovery in some cases.
		
		To ensure only correct trace graphs are formed, events will only be published if subscribers are present prior to starting the trace. Subscriptions
		which are added after the trace begins will not receive future events from that trace, only future traces will be seen.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		import { AsyncLocalStorage } from 'node:async_hooks';
		
		const channels = diagnostics_channel.tracingChannel('my-channel');
		const myStore = new AsyncLocalStorage();
		
		// The start channel sets the initial store data to something
		// and stores that store data value on the trace context object
		channels.start.bindStore(myStore, (data) => {
		  const span = new Span(data);
		  data.span = span;
		  return span;
		});
		
		// Then asyncStart can restore from that data it stored previously
		channels.asyncStart.bindStore(myStore, (data) => {
		  return data.span;
		});
		```
	**/
	function traceCallback<ThisArg, Args:(Array<Dynamic>), Result>(fn:(args:haxe.extern.Rest<Any>) -> Result, ?position:Float, ?context:ContextType, ?thisArg:ThisArg, args:haxe.extern.Rest<Any>):Result;
	/**
		`true` if any of the individual channels has a subscriber, `false` if not.
		
		This is a helper method available on a
		{@link
		TracingChannel
		}
		instance to check
		if any of the [TracingChannel Channels](https://nodejs.org/api/diagnostics_channel.html#tracingchannel-channels) have subscribers.
		A `true` is returned if any of them have at least one subscriber, a `false` is returned otherwise.
		
		```js
		const diagnostics_channel = require('node:diagnostics_channel');
		
		const channels = diagnostics_channel.tracingChannel('my-channel');
		
		if (channels.hasSubscribers) {
		  // Do something
		}
		```
	**/
	final hasSubscribers : Bool;
	static var prototype : TracingChannel<Dynamic, Dynamic>;
}