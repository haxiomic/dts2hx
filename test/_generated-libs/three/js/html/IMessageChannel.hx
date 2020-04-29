package js.html;
/**
	This Channel Messaging API interface allows us to create a new message channel and send data through it via its two MessagePort properties.
**/
extern typedef IMessageChannel = {
	/**
		Returns the first MessagePort object.
	**/
	final port1 : IMessagePort;
	/**
		Returns the second MessagePort object.
	**/
	final port2 : IMessagePort;
};