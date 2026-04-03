package js.html;

typedef MediaCapabilitiesKeySystemConfiguration = {
	@:optional
	var audio : KeySystemTrackConfiguration;
	@:optional
	var distinctiveIdentifier : js.html.eme.MediaKeysRequirement;
	@:optional
	var initDataType : String;
	var keySystem : String;
	@:optional
	var persistentState : js.html.eme.MediaKeysRequirement;
	@:optional
	var sessionTypes : Array<String>;
	@:optional
	var video : KeySystemTrackConfiguration;
};