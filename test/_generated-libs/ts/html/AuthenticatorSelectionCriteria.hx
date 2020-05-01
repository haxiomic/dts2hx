package ts.html;
typedef AuthenticatorSelectionCriteria = {
	@:optional
	var authenticatorAttachment : String;
	@:optional
	var requireResidentKey : Bool;
	@:optional
	var userVerification : String;
};