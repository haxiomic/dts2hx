package ts.html;
typedef RTCSrtpSdesParameters = {
	@:optional
	var cryptoSuite : String;
	@:optional
	var keyParams : Array<RTCSrtpKeyParam>;
	@:optional
	var sessionParams : Array<String>;
	@:optional
	var tag : Float;
};