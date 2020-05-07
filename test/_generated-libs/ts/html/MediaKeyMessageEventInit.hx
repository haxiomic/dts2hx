package ts.html;
typedef MediaKeyMessageEventInit = {
	var message : ts.lib.ArrayBuffer;
	var messageType : MediaKeyMessageType;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};