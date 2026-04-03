package js.html;

typedef MediaEncodingConfiguration = {
	var type : MediaEncodingType;
	@:optional
	var audio : AudioConfiguration;
	@:optional
	var video : VideoConfiguration;
};