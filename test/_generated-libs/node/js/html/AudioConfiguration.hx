package js.html;

typedef AudioConfiguration = {
	@:optional
	var bitrate : Float;
	@:optional
	var channels : String;
	var contentType : String;
	@:optional
	var samplerate : Float;
	@:optional
	var spatialRendering : Bool;
};