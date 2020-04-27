package js.html;
extern interface MediaTrackConstraintSet {
	@:optional
	var aspectRatio : haxe.extern.EitherType<Float, ConstrainDoubleRange>;
	@:optional
	var autoGainControl : haxe.extern.EitherType<Bool, ConstrainBooleanParameters>;
	@:optional
	var channelCount : haxe.extern.EitherType<Float, ConstrainULongRange>;
	@:optional
	var deviceId : haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<String>, ConstrainDOMStringParameters>>;
	@:optional
	var echoCancellation : haxe.extern.EitherType<Bool, ConstrainBooleanParameters>;
	@:optional
	var facingMode : haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<String>, ConstrainDOMStringParameters>>;
	@:optional
	var frameRate : haxe.extern.EitherType<Float, ConstrainDoubleRange>;
	@:optional
	var groupId : haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<String>, ConstrainDOMStringParameters>>;
	@:optional
	var height : haxe.extern.EitherType<Float, ConstrainULongRange>;
	@:optional
	var latency : haxe.extern.EitherType<Float, ConstrainDoubleRange>;
	@:optional
	var noiseSuppression : haxe.extern.EitherType<Bool, ConstrainBooleanParameters>;
	@:optional
	var resizeMode : haxe.extern.EitherType<String, haxe.extern.EitherType<std.Array<String>, ConstrainDOMStringParameters>>;
	@:optional
	var sampleRate : haxe.extern.EitherType<Float, ConstrainULongRange>;
	@:optional
	var sampleSize : haxe.extern.EitherType<Float, ConstrainULongRange>;
	@:optional
	var width : haxe.extern.EitherType<Float, ConstrainULongRange>;
}