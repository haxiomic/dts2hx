package js.html;

typedef ValidityStateFlags = {
	@:optional
	var badInput : Bool;
	@:optional
	var customError : Bool;
	@:optional
	var patternMismatch : Bool;
	@:optional
	var rangeOverflow : Bool;
	@:optional
	var rangeUnderflow : Bool;
	@:optional
	var stepMismatch : Bool;
	@:optional
	var tooLong : Bool;
	@:optional
	var tooShort : Bool;
	@:optional
	var typeMismatch : Bool;
	@:optional
	var valueMissing : Bool;
};