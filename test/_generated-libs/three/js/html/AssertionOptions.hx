package js.html;
extern typedef AssertionOptions = {
	@:optional
	var allowList : std.Array<ScopedCredentialDescriptor>;
	@:optional
	var extensions : WebAuthnExtensions;
	@:optional
	var rpId : String;
	@:optional
	var timeoutSeconds : Float;
};