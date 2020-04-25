package js.lib.intl;
extern interface ResolvedDateTimeFormatOptions {
	var locale : String;
	var calendar : String;
	var numberingSystem : String;
	var timeZone : String;
	@:optional
	var hour12 : Null<Bool>;
	@:optional
	var weekday : Null<String>;
	@:optional
	var era : Null<String>;
	@:optional
	var year : Null<String>;
	@:optional
	var month : Null<String>;
	@:optional
	var day : Null<String>;
	@:optional
	var hour : Null<String>;
	@:optional
	var minute : Null<String>;
	@:optional
	var second : Null<String>;
	@:optional
	var timeZoneName : Null<String>;
}