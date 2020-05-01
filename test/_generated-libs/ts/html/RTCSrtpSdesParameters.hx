package ts.html;
typedef RTCSrtpSdesParameters = {
	@:optional
	var cryptoSuite : String;
	@:optional
	var keyParams : std.Array<RTCSrtpKeyParam>;
	@:optional
	var sessionParams : std.Array<String>;
	@:optional
	var tag : Float;
};