package js.html;
extern typedef ScopedCredentialOptions = {
	@:optional
	var excludeList : std.Array<ScopedCredentialDescriptor>;
	@:optional
	var extensions : WebAuthnExtensions;
	@:optional
	var rpId : String;
	@:optional
	var timeoutSeconds : Float;
};