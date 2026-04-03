package js.html;

/**
	The **`Credential`** interface of the Credential Management API provides information about an entity (usually a user) normally as a prerequisite to a trust decision.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/Credential)
**/
@:native("Credential") extern class Credential {
	function new();
	/**
		The **`id`** read-only property of the Credential interface returns a string containing the credential's identifier.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Credential/id)
	**/
	final id : String;
	/**
		The **`type`** read-only property of the Credential interface returns a string containing the credential's type.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Credential/type)
	**/
	final type : String;
	static var prototype : Credential;
}