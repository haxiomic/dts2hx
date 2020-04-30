package ts.html;
extern typedef AuthenticatorSelectionCriteria = {
	@:optional
	var authenticatorAttachment : String;
	@:optional
	var requireResidentKey : Bool;
	@:optional
	var userVerification : String;
};