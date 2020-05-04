package ts.html;
typedef MediaKeySystemConfiguration = {
	@:optional
	var audioCapabilities : Array<MediaKeySystemMediaCapability>;
	@:optional
	var distinctiveIdentifier : String;
	@:optional
	var initDataTypes : Array<String>;
	@:optional
	var label : String;
	@:optional
	var persistentState : String;
	@:optional
	var sessionTypes : Array<String>;
	@:optional
	var videoCapabilities : Array<MediaKeySystemMediaCapability>;
};