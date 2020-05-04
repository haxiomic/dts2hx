package ts.html;
typedef MediaTrackConstraints = {
	@:optional
	var advanced : Array<MediaTrackConstraintSet>;
	@:optional
	var aspectRatio : ts.AnyOf2<Float, ConstrainDoubleRange>;
	@:optional
	var autoGainControl : ts.AnyOf2<Bool, ConstrainBooleanParameters>;
	@:optional
	var channelCount : ts.AnyOf2<Float, ConstrainULongRange>;
	@:optional
	var deviceId : ts.AnyOf3<String, Array<String>, ConstrainDOMStringParameters>;
	@:optional
	var echoCancellation : ts.AnyOf2<Bool, ConstrainBooleanParameters>;
	@:optional
	var facingMode : ts.AnyOf3<String, Array<String>, ConstrainDOMStringParameters>;
	@:optional
	var frameRate : ts.AnyOf2<Float, ConstrainDoubleRange>;
	@:optional
	var groupId : ts.AnyOf3<String, Array<String>, ConstrainDOMStringParameters>;
	@:optional
	var height : ts.AnyOf2<Float, ConstrainULongRange>;
	@:optional
	var latency : ts.AnyOf2<Float, ConstrainDoubleRange>;
	@:optional
	var noiseSuppression : ts.AnyOf2<Bool, ConstrainBooleanParameters>;
	@:optional
	var resizeMode : ts.AnyOf3<String, Array<String>, ConstrainDOMStringParameters>;
	@:optional
	var sampleRate : ts.AnyOf2<Float, ConstrainULongRange>;
	@:optional
	var sampleSize : ts.AnyOf2<Float, ConstrainULongRange>;
	@:optional
	var width : ts.AnyOf2<Float, ConstrainULongRange>;
};