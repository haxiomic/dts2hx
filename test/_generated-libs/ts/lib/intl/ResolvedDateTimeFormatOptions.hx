package ts.lib.intl;
extern typedef ResolvedDateTimeFormatOptions = {
	var locale : String;
	var calendar : String;
	var numberingSystem : String;
	var timeZone : String;
	@:optional
	var hour12 : Bool;
	@:optional
	var weekday : String;
	@:optional
	var era : String;
	@:optional
	var year : String;
	@:optional
	var month : String;
	@:optional
	var day : String;
	@:optional
	var hour : String;
	@:optional
	var minute : String;
	@:optional
	var second : String;
	@:optional
	var timeZoneName : String;
};