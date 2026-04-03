package js.html;

/**
	The **`MessageChannel`** interface of the Channel Messaging API allows us to create a new message channel and send data through it via its two MessagePort properties.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessageChannel)
	
	`MessageChannel` class is a global reference for `import { MessageChannel } from 'node:worker_threads'`
	https://nodejs.org/api/globals.html#messagechannel
**/
typedef IMessageChannel = {
	/**
		The **`port1`** read-only property of the the port attached to the context that originated the channel.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessageChannel/port1)
	**/
	final port1 : js.html.MessagePort;
	/**
		The **`port2`** read-only property of the the port attached to the context at the other end of the channel, which the message is initially sent to.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/MessageChannel/port2)
	**/
	final port2 : js.html.MessagePort;
};