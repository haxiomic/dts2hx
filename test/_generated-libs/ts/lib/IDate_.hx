package ts.lib;
/**
	Enables basic storage and retrieval of dates and times.
**/
typedef IDate_ = {
	/**
		Returns a string representation of a date. The format of the string depends on the locale.
	**/
	function toString():String;
	/**
		Returns a date as a string value.
	**/
	function toDateString():String;
	/**
		Returns a time as a string value.
	**/
	function toTimeString():String;
	/**
		Returns a value as a string value appropriate to the host environment's current locale.
		
		Converts a date and time to a string by using the current or specified locale.
	**/
	@:overload(function(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.DateTimeFormatOptions):String { })
	function toLocaleString():String;
	/**
		Returns a date as a string value appropriate to the host environment's current locale.
		
		Converts a date to a string by using the current or specified locale.
	**/
	@:overload(function(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.DateTimeFormatOptions):String { })
	function toLocaleDateString():String;
	/**
		Returns a time as a string value appropriate to the host environment's current locale.
		
		Converts a time to a string by using the current or specified locale.
	**/
	@:overload(function(?locales:ts.AnyOf2<String, Array<String>>, ?options:ts.lib.intl.DateTimeFormatOptions):String { })
	function toLocaleTimeString():String;
	/**
		Returns the stored time value in milliseconds since midnight, January 1, 1970 UTC.
	**/
	function valueOf():Float;
	/**
		Gets the time value in milliseconds.
	**/
	function getTime():Float;
	/**
		Gets the year, using local time.
	**/
	function getFullYear():Float;
	/**
		Gets the year using Universal Coordinated Time (UTC).
	**/
	function getUTCFullYear():Float;
	/**
		Gets the month, using local time.
	**/
	function getMonth():Float;
	/**
		Gets the month of a Date object using Universal Coordinated Time (UTC).
	**/
	function getUTCMonth():Float;
	/**
		Gets the day-of-the-month, using local time.
	**/
	function getDate():Float;
	/**
		Gets the day-of-the-month, using Universal Coordinated Time (UTC).
	**/
	function getUTCDate():Float;
	/**
		Gets the day of the week, using local time.
	**/
	function getDay():Float;
	/**
		Gets the day of the week using Universal Coordinated Time (UTC).
	**/
	function getUTCDay():Float;
	/**
		Gets the hours in a date, using local time.
	**/
	function getHours():Float;
	/**
		Gets the hours value in a Date object using Universal Coordinated Time (UTC).
	**/
	function getUTCHours():Float;
	/**
		Gets the minutes of a Date object, using local time.
	**/
	function getMinutes():Float;
	/**
		Gets the minutes of a Date object using Universal Coordinated Time (UTC).
	**/
	function getUTCMinutes():Float;
	/**
		Gets the seconds of a Date object, using local time.
	**/
	function getSeconds():Float;
	/**
		Gets the seconds of a Date object using Universal Coordinated Time (UTC).
	**/
	function getUTCSeconds():Float;
	/**
		Gets the milliseconds of a Date, using local time.
	**/
	function getMilliseconds():Float;
	/**
		Gets the milliseconds of a Date object using Universal Coordinated Time (UTC).
	**/
	function getUTCMilliseconds():Float;
	/**
		Gets the difference in minutes between the time on the local computer and Universal Coordinated Time (UTC).
	**/
	function getTimezoneOffset():Float;
	/**
		Sets the date and time value in the Date object.
	**/
	function setTime(time:Float):Float;
	/**
		Sets the milliseconds value in the Date object using local time.
	**/
	function setMilliseconds(ms:Float):Float;
	/**
		Sets the milliseconds value in the Date object using Universal Coordinated Time (UTC).
	**/
	function setUTCMilliseconds(ms:Float):Float;
	/**
		Sets the seconds value in the Date object using local time.
	**/
	function setSeconds(sec:Float, ?ms:Float):Float;
	/**
		Sets the seconds value in the Date object using Universal Coordinated Time (UTC).
	**/
	function setUTCSeconds(sec:Float, ?ms:Float):Float;
	/**
		Sets the minutes value in the Date object using local time.
	**/
	function setMinutes(min:Float, ?sec:Float, ?ms:Float):Float;
	/**
		Sets the minutes value in the Date object using Universal Coordinated Time (UTC).
	**/
	function setUTCMinutes(min:Float, ?sec:Float, ?ms:Float):Float;
	/**
		Sets the hour value in the Date object using local time.
	**/
	function setHours(hours:Float, ?min:Float, ?sec:Float, ?ms:Float):Float;
	/**
		Sets the hours value in the Date object using Universal Coordinated Time (UTC).
	**/
	function setUTCHours(hours:Float, ?min:Float, ?sec:Float, ?ms:Float):Float;
	/**
		Sets the numeric day-of-the-month value of the Date object using local time.
	**/
	function setDate(date:Float):Float;
	/**
		Sets the numeric day of the month in the Date object using Universal Coordinated Time (UTC).
	**/
	function setUTCDate(date:Float):Float;
	/**
		Sets the month value in the Date object using local time.
	**/
	function setMonth(month:Float, ?date:Float):Float;
	/**
		Sets the month value in the Date object using Universal Coordinated Time (UTC).
	**/
	function setUTCMonth(month:Float, ?date:Float):Float;
	/**
		Sets the year of the Date object using local time.
	**/
	function setFullYear(year:Float, ?month:Float, ?date:Float):Float;
	/**
		Sets the year value in the Date object using Universal Coordinated Time (UTC).
	**/
	function setUTCFullYear(year:Float, ?month:Float, ?date:Float):Float;
	/**
		Returns a date converted to a string using Universal Coordinated Time (UTC).
	**/
	function toUTCString():String;
	/**
		Returns a date as a string value in ISO format.
	**/
	function toISOString():String;
	/**
		Used by the JSON.stringify method to enable the transformation of an object's data for JavaScript Object Notation (JSON) serialization.
	**/
	function toJSON(?key:Dynamic):String;
	var getVarDate : () -> VarDate;
};