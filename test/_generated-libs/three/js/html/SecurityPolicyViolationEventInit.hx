package js.html;
extern typedef SecurityPolicyViolationEventInit = EventInit & { @:optional
	var blockedURI : String; @:optional
	var columnNumber : Float; @:optional
	var documentURI : String; @:optional
	var effectiveDirective : String; @:optional
	var lineNumber : Float; @:optional
	var originalPolicy : String; @:optional
	var referrer : String; @:optional
	var sourceFile : String; @:optional
	var statusCode : Float; @:optional
	var violatedDirective : String; };