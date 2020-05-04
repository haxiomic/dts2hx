package ts.html;
typedef MediaTrackCapabilities = {
	@:optional
	var aspectRatio : DoubleRange;
	@:optional
	var autoGainControl : Array<Bool>;
	@:optional
	var channelCount : ULongRange;
	@:optional
	var deviceId : String;
	@:optional
	var echoCancellation : Array<Bool>;
	@:optional
	var facingMode : Array<String>;
	@:optional
	var frameRate : DoubleRange;
	@:optional
	var groupId : String;
	@:optional
	var height : ULongRange;
	@:optional
	var latency : DoubleRange;
	@:optional
	var noiseSuppression : Array<Bool>;
	@:optional
	var resizeMode : Array<String>;
	@:optional
	var sampleRate : ULongRange;
	@:optional
	var sampleSize : ULongRange;
	@:optional
	var width : ULongRange;
};