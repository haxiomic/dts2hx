package js.html;
extern interface AuthenticatorSelectionCriteria {
	@:optional
	var authenticatorAttachment : String;
	@:optional
	var requireResidentKey : Bool;
	@:optional
	var userVerification : String;
}