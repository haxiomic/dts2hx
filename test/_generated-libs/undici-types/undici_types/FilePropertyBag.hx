package undici_types;

typedef FilePropertyBag = {
	/**
		The last modified date of the file as the number of milliseconds since the Unix epoch (January 1, 1970 at midnight). Files without a known last modified date return the current date.
	**/
	@:optional
	var lastModified : Float;
	@:optional
	var type : String;
	@:optional
	var endings : String;
};