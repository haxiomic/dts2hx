package js.html;

typedef OpusEncoderConfig = {
	@:optional
	var complexity : Float;
	@:optional
	var format : OpusBitstreamFormat;
	@:optional
	var frameDuration : Float;
	@:optional
	var packetlossperc : Float;
	@:optional
	var usedtx : Bool;
	@:optional
	var useinbandfec : Bool;
};