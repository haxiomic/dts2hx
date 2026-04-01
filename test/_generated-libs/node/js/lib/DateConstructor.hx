package js.lib;

typedef DateConstructor = {
	@:selfCall
	function call():String;
	final prototype : js.lib.Date;
	/**
		Parses a string containing a date, and returns the number of milliseconds between that date and midnight, January 1, 1970.
	**/
	function parse(s:String):Float;
	/**
		Returns the number of milliseconds between midnight, January 1, 1970 Universal Coordinated Time (UTC) (or GMT) and the specified date.
	**/
	@:overload(function(year:Float, ?monthIndex:Float, ?date:Float, ?hours:Float, ?minutes:Float, ?seconds:Float, ?ms:Float):Float { })
	function UTC(year:Float, monthIndex:Float, ?date:Float, ?hours:Float, ?minutes:Float, ?seconds:Float, ?ms:Float):Float;
	/**
		Returns the number of milliseconds elapsed since midnight, January 1, 1970 Universal Coordinated Time (UTC).
	**/
	function now():Float;
};