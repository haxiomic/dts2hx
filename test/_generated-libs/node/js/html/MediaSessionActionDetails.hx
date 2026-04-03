package js.html;

typedef MediaSessionActionDetails = {
	var action : MediaSessionAction;
	@:optional
	var fastSeek : Bool;
	@:optional
	var seekOffset : Float;
	@:optional
	var seekTime : Float;
};