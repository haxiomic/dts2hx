package js.html;
extern typedef MediaKeySystemConfiguration = {
	@:optional
	var audioCapabilities : std.Array<MediaKeySystemMediaCapability>;
	@:optional
	var distinctiveIdentifier : String;
	@:optional
	var initDataTypes : std.Array<String>;
	@:optional
	var label : String;
	@:optional
	var persistentState : String;
	@:optional
	var sessionTypes : std.Array<String>;
	@:optional
	var videoCapabilities : std.Array<MediaKeySystemMediaCapability>;
};