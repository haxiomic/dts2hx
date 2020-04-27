package js.html;
extern typedef StoreExceptionsInformation = ExceptionInformation & { @:optional
	var detailURI : String; @:optional
	var explanationString : String; @:optional
	var siteName : String; };