package node.diagnostics_channel;

/**
	The class `Channel` represents an individual named channel within the data
	pipeline. It is used to track subscribers and to publish messages when there
	are subscribers present. It exists as a separate object to avoid channel
	lookups at publish time, enabling very fast publish speeds and allowing
	for heavy use while incurring very minimal cost. Channels are created with
	{@link
	channel
	}
	, constructing a channel directly
	with `new Channel(name)` is not supported.
**/
@:jsRequire("diagnostics_channel", "Channel") extern class Channel<StoreType, ContextType> {
	private function new(name:ts.AnyOf2<String, js.lib.Symbol>);
	final name : ts.AnyOf2<String, js.lib.Symbol>;
	/**
		Check if there are active subscribers to this channel. This is helpful if
		the message you want to send might be expensive to prepare.
		
		This API is optional but helpful when trying to publish messages from very
		performance-sensitive code.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channel = diagnostics_channel.channel('my-channel');
		
		if (channel.hasSubscribers) {
		  // There are subscribers, prepare and publish message
		}
		```
	**/
	final hasSubscribers : Bool;
	/**
		Publish a message to any subscribers to the channel. This will trigger
		message handlers synchronously so they will execute within the same context.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channel = diagnostics_channel.channel('my-channel');
		
		channel.publish({
		  some: 'message',
		});
		```
	**/
	function publish(message:Any):Void;
	/**
		Register a message handler to subscribe to this channel. This message handler
		will be run synchronously whenever a message is published to the channel. Any
		errors thrown in the message handler will trigger an `'uncaughtException'`.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channel = diagnostics_channel.channel('my-channel');
		
		channel.subscribe((message, name) => {
		  // Received data
		});
		```
	**/
	function subscribe(onMessage:ChannelListener):Void;
	/**
		Remove a message handler previously registered to this channel with `channel.subscribe(onMessage)`.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		
		const channel = diagnostics_channel.channel('my-channel');
		
		function onMessage(message, name) {
		  // Received data
		}
		
		channel.subscribe(onMessage);
		
		channel.unsubscribe(onMessage);
		```
	**/
	function unsubscribe(onMessage:ChannelListener):Void;
	/**
		When `channel.runStores(context, ...)` is called, the given context data
		will be applied to any store bound to the channel. If the store has already been
		bound the previous `transform` function will be replaced with the new one.
		The `transform` function may be omitted to set the given context data as the
		context directly.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		import { AsyncLocalStorage } from 'node:async_hooks';
		
		const store = new AsyncLocalStorage();
		
		const channel = diagnostics_channel.channel('my-channel');
		
		channel.bindStore(store, (data) => {
		  return { data };
		});
		```
	**/
	function bindStore(store:node.async_hooks.AsyncLocalStorage<StoreType>, ?transform:(context:ContextType) -> StoreType):Void;
	/**
		Remove a message handler previously registered to this channel with `channel.bindStore(store)`.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		import { AsyncLocalStorage } from 'node:async_hooks';
		
		const store = new AsyncLocalStorage();
		
		const channel = diagnostics_channel.channel('my-channel');
		
		channel.bindStore(store);
		channel.unbindStore(store);
		```
	**/
	function unbindStore(store:node.async_hooks.AsyncLocalStorage<StoreType>):Bool;
	/**
		Applies the given data to any AsyncLocalStorage instances bound to the channel
		for the duration of the given function, then publishes to the channel within
		the scope of that data is applied to the stores.
		
		If a transform function was given to `channel.bindStore(store)` it will be
		applied to transform the message data before it becomes the context value for
		the store. The prior storage context is accessible from within the transform
		function in cases where context linking is required.
		
		The context applied to the store should be accessible in any async code which
		continues from execution which began during the given function, however
		there are some situations in which `context loss` may occur.
		
		```js
		import diagnostics_channel from 'node:diagnostics_channel';
		import { AsyncLocalStorage } from 'node:async_hooks';
		
		const store = new AsyncLocalStorage();
		
		const channel = diagnostics_channel.channel('my-channel');
		
		channel.bindStore(store, (message) => {
		  const parent = store.getStore();
		  return new Span(message, parent);
		});
		channel.runStores({ some: 'message' }, () => {
		  store.getStore(); // Span({ some: 'message' })
		});
		```
	**/
	function runStores<ThisArg, Args:(Array<Dynamic>), Result>(context:ContextType, fn:(args:haxe.extern.Rest<Any>) -> Result, ?thisArg:ThisArg, args:haxe.extern.Rest<Any>):Result;
	static var prototype : Channel<Dynamic, Dynamic>;
}