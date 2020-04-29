package js.html;
extern typedef MediaTrackCapabilities = {
	@:optional
	var aspectRatio : DoubleRange;
	@:optional
	var autoGainControl : std.Array<Bool>;
	@:optional
	var channelCount : ULongRange;
	@:optional
	var deviceId : String;
	@:optional
	var echoCancellation : std.Array<Bool>;
	@:optional
	var facingMode : std.Array<String>;
	@:optional
	var frameRate : DoubleRange;
	@:optional
	var groupId : String;
	@:optional
	var height : ULongRange;
	@:optional
	var latency : DoubleRange;
	@:optional
	var noiseSuppression : std.Array<Bool>;
	@:optional
	var resizeMode : std.Array<String>;
	@:optional
	var sampleRate : ULongRange;
	@:optional
	var sampleSize : ULongRange;
	@:optional
	var width : ULongRange;
};