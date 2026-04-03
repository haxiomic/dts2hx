package node.tls;

typedef PSKCallbackNegotation = {
	var psk : global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>;
	var identity : String;
};