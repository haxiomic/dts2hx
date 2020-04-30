package ts.html;
/**
	Inherits from Event, and represents the event object of an event sent on a document or worker when its content security policy is violated.
**/
@:native("SecurityPolicyViolationEvent") extern class SecurityPolicyViolationEvent {
	function new(type:String, ?eventInitDict:SecurityPolicyViolationEventInit);
	final blockedURI : String;
	final columnNumber : Float;
	final documentURI : String;
	final effectiveDirective : String;
	final lineNumber : Float;
	final originalPolicy : String;
	final referrer : String;
	final sourceFile : String;
	final statusCode : Float;
	final violatedDirective : String;
	static var prototype : ISecurityPolicyViolationEvent;
}