package js.html;

typedef MediaDecodingConfiguration = {
	@:optional
	var keySystemConfiguration : MediaCapabilitiesKeySystemConfiguration;
	var type : MediaDecodingType;
	@:optional
	var audio : AudioConfiguration;
	@:optional
	var video : VideoConfiguration;
};