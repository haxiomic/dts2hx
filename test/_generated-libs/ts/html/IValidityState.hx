package ts.html;
/**
	The validity states that an element can be in, with respect to constraint validation. Together, they help explain why an element's value fails to validate, if it's not valid.
**/
typedef IValidityState = {
	final badInput : Bool;
	final customError : Bool;
	final patternMismatch : Bool;
	final rangeOverflow : Bool;
	final rangeUnderflow : Bool;
	final stepMismatch : Bool;
	final tooLong : Bool;
	final tooShort : Bool;
	final typeMismatch : Bool;
	final valid : Bool;
	final valueMissing : Bool;
};