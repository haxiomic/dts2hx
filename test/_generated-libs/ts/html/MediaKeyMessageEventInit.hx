package ts.html;
typedef MediaKeyMessageEventInit = {
	var message : ts.lib.IArrayBuffer;
	var messageType : MediaKeyMessageType;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};