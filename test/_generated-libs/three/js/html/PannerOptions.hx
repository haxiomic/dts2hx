package js.html;
extern typedef PannerOptions = AudioNodeOptions & { @:optional
	var coneInnerAngle : Float; @:optional
	var coneOuterAngle : Float; @:optional
	var coneOuterGain : Float; @:optional
	var distanceModel : String; @:optional
	var maxDistance : Float; @:optional
	var orientationX : Float; @:optional
	var orientationY : Float; @:optional
	var orientationZ : Float; @:optional
	var panningModel : String; @:optional
	var positionX : Float; @:optional
	var positionY : Float; @:optional
	var positionZ : Float; @:optional
	var refDistance : Float; @:optional
	var rolloffFactor : Float; };